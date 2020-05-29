# Catalog Access Management

## Architecture
  

<img src="images/ArchitectureOverview.jpg" width="600">


<font name="Verdana" size="14">

### 1. The catalog managment is available in latest cli. You need to update your ibmcloud cli using.

ibmcloud update

### 2. Install the plugin

ibmcloud plugin install catalogs-management

### 3. Set your target resource group.

ibmcloud target -g <Resource Group Name> 

### 4. Create a Private catalog

ibmcloud catalog create --name <Catalog Name> --description <Description> hide-ibm-public-catalog

### 5. Create a Tile. You need to pass .tgz file as an argument.

ibmcloud catalog offering create --catalog <Catalog Name> --zipurl <Tile URL>


### 6. Follow the walkthru of screen - complete activities

<br></br>
##### Configure Product
<img src="images/PC-configprd.jpg" width="600">


<br></br>

##### Configure Category
<img src="images/PC-AddCategory.jpg" width="600">

<br></br>

##### Add Deployment Values
<img src="images/PC-AddDeploymentValues.jpg" width="600">

<br></br>

##### Configure Deployment Values

<img src="images/PC-ConfigDeploymentValues.jpg" width="600">

<br></br>

##### Add License 
<img src="images/PC-AddLicense.jpg" width="600">

<br></br>

##### Add Readme
<img src="images/PC-Readme.jpg" width="600">

<br></br>

##### Validate Product
<img src="images/PC-ValidateProduct.jpg" width="600">

<br></br>

##### Product Validation - Summary
<img src="images/PC-ProductValidated.jpg" width="600">

<br></br>

<br></br>

##### Validated and Product Needs to be publish
<img src="images/PC-Publish.jpg" width="600">

<br></br>

<br></br>

##### Product Published
<img src="images/PC-Published.jpg" width="600">

<br></br>

<br></br>

##### Catalog Tile
<img src="images/PC-Tile.jpg" width="600">

<br></br>
<br></br>

##### Create Instance
<img src="images/PC-CreateInstances.jpg" width="600">

<br></br>