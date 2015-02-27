# silverstripe-RDWapi
Silverstripe Extension to extract car data from RDW (Rijksdienst voor Wegverkeer).

## Introduction

RDW api is an extension with can extract car data from the RDW api. People can fill in the licenseplate number and the api will display the records linked to their licenseplate number.

## Maintainer Contact

	* Dennis de Jong  `<dennis (at) djpmedia (dot) nl>`

## Requirements

 * SilverStripe 3.1


## Installation


### Manually

 1.  Download the module from the link above. 
 2.  Extract the file (if you are on windows try 7-zip for extracting tar.gz files)
 3.  Make sure the folder after being extracted is named 'rdwapi' 
 4.  Place this directory in your sites root directory. This is the one with framework and cms in it.
 5.  Use $RdwForm to display the licenseplate number form

After installation, make sure you rebuild your database through `dev/build?flush=all`. You should see a new PageType in the CMS 'RdwPage'. This has PageType is uses for displaying the results.

### Datalist

To check which variables you can display, check the following url: https://datamarket.azure.com/dataset/opendata.rdw/vrtg.open.data#schema

## Troubleshooting

After installation make sure you have done a `dev/build` you may also need to flush the admin view by appending `?flush=1` to the URL like `http://yoursite.com/admin?flush=1`


## Contributing

