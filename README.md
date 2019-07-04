# MSM Plugin :: RequestList Set Row Class

Adds a specific class to a request list row if the row contains an inner cell having a specific value in a specific column specified in the plugin configuration.
Multiple rules could be set in the plugin configuration if required.


## Compatible Versions

| Plugin  | MSM                    |
|---------|------------------------|
| 1.3     | 14.10 - 14.16          |

## Installation

Please see MSM documentation for the information on how to install plugins.

Once the plugin has been installed you will need to configure the following settings within the plugin page:

+ *Plugin Configuration* : 	The plugin configuration stored in a JSON format. The rule object should contain these three parameters specified:
							columnTitle - the title of column to search value within
							columnValue - the specific value to search for in the column
							cssClassName - CSS class name to be applied to the row where the value was found

							Plugin configuration examples:
								{"columnTitle": "VIP", "columnValue": "YES", "cssClassName": "row-class-vip"}
								[{"columnTitle": "Priority", "columnValue": "1", "cssClassName": "row-class-priority1"},{"columnTitle": "VIP", "columnValue": "YES", "cssClassName": "row-class-vip"}]
								
							Style of classes used in the configuration must be defined in MSM Custom CSS specifications.

## Usage

Plugin is loaded up automatically when any request list is opened.

## Limitations


## Contributing

Any feedback is very welcome.