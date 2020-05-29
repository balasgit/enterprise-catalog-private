## Assigning values to the parameters from the terraform invocation
CATALOG_NAME="$1"
echo "Private Catalog Name:" ${CATALOG_NAME}
CATALOG_DESC="$2"
echo "Private Catalog Description:" ${CATALOG_DESC}
resource_group="$3"
echo "Private Catalog Resource Group:" ${resource_group} 
region="$4"
echo "Private Catalog region:" ${region} 
apikey="$5"
echo "Private Catalog APIKEY:" ${apikey} 
#AccessGroupurl="$6"
#echo "Private Catalog AccessGroup - Github URL:" ${AccessGroupurl} 
#ResourceGroupurl="$7"
#echo "Private Catalog Resourcegroup - Github URL:" ${ResourceGroupurl}
#Toolkiturl="$8"
#echo "Private Catalog Toolkit URL - Github URL:" ${Toolkiturl}
#Inviteusersurl="$9"
#echo "Private Catalog Invite Users - Github URL:" ${Inviteusersurl}
#AssignuserAGurl="$10"
#echo "Private Catalog Assign Users to AG - Github URL:" ${AssignuserAGurl}
#CMurl="$11"
#echo "Private Catalog CM  - Github URL:" ${CMurl}
#Liteurl="$12"
#echo "Private Catalog Lite Services - Github URL:" ${Liteurl}

## Check whether API key for cli access to the IBM Cloud is available or not
if [[ ${apikey} == "" ]]; then

    echo "APIKey missing"
else 
    # 1. The catalog managment is available in latest cli. You need to update your ibmcloud cli using.

   ibmcloud update

    # 2. Install the plugin

    ibmcloud plugin install catalogs-management

    #ibmcloud plugin show catalogs-management

    ## Logging into the IBM Cloud using the parameters from the terraform
    ibmcloud login  --apikey ${apikey} -g ${resource_group} -r ${region}
    echo "Logged in Successfully"

    # 3. Set your target resource group.

    ibmcloud target -g ${resource_group}

    # 4. Create a Private catalog

    ibmcloud catalog create --name ${CATALOG_NAME} --description ${CATALOG_DESC} hide-ibm-public-catalog

    #  Add Products to Catalog

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${AccessGroupurl}

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${ResourceGroupurl}

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${Inviteusersurl}

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${Toolkiturl}

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${AssignuserAGurl}

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${CMurl}

    #ibmcloud catalog offering create --catalog ${CATALOG_NAME} --zipurl ${Liteurl}

    #List the Offerings
    ibmcloud catalog offerings --catalog ${CATALOG_NAME}

    # 6. In the ibm cloud webconsole, choose Manage > Catalogs to the created private catalog and tile.

    # 7. At this stage all the other properties of this tile not set. You have to Update catalogies, validate, publish and all.

fi

