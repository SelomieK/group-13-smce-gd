<treqs-element id="39f253a076ae11ebb811cf2f044815f7" type="requirement">


### 1.0 Create requirements with templates 

Treqs create command shall allow to generate treqs elements.
The initial content of the treqs element can be defined based on a template.
The command attempts to locate the correct template file (e.g. based on the treqs element type) and to read the content of the template file and creates a treqs element according to it.
The optional amount parameter allows to generate multiple elements at the same time in the given format.

```
Usage: 
treqs create [OPTIONS]
```
 Options:  
 ```--type``` Specifies the type of requirement. E.g userstory,planguage, EARS    
 ```--label``` A short (less than one line) text describing this treqs element. Markdown (headings) encouraged.   
```--amount``` The number of times the element should be created using the given template. Default value is 1.    
```--template_folder``` Location where the templates are stored.Default location is the template folder, although it can be stored anywhere  in the system  and can be accessed by passing the path; in the windows format "//"  E.g. C://xyz//template.    
```--template```  An .md files that contains a format to write different requirements e.g userstory, planguage, EARS  

**Note (example output with ``treqs-elem``): **  
In the following examples, we replace ``treqs-element`` in the output with ``treqs-elem`` to avoid clashes with treqs tooling (the examples would otherwise been shown as requirements in treqs list for this project).


**Example:**  
  Note- If the templatename,type  is same and the template is stored at default location then treqs create can be executed via interactive mode and non interactive otherwise use non interactive mode. 
```
  Interactive - Treqs create
  Non Interactive -Treqs create [Options]
```
 **Example 1. type and template name is same, template is stored in the default folder location**
.
 ```
 treqs create
 Which type should the element have?: userstory
 Enter the label for the element [requirement]: userstory
 ```
Given these values, the userstory.md template in "treqs-ng\ template" will be used.

**Output:**
 ```
<treqs-elem id="41088225447711ec968118dbf21d2949" type="userstory">

userstory

### As a : TBD
### I want : TBD
### so that: TBD

</treqs-elem>
 ```
**Example 2. type and template name is different, template is stored in the default folder location**  
 
``` 
treqs create --type qualityattributes --label QA --template planguage
```
**Output**
```
<treqs-elem id="8edfda71447711eca52518dbf21d2949" type="qualityattributes">

QA

### TAG: TBD
### PLAN: TBD
### SCALE: TBD
### MUST: TBD
### STRETCH: TBD
### WISH: TBD
### RECORD: TBD
### TREND: TBD
### STAKEHOLDER: TBD
### AUTHORITY: TBD
### DEFINED: TBD

</treqs-elem>

```
**Example 3: type and template name same, Template is stored in other location**  
```
treqs create --type userstory --template_folder C:\\Users\\SpEeDY\\Desktop             
```
**Output**
```
<treqs-elem id="d7f7b73c44a311ec83b118dbf21d2949" type="userstory">

userstory

### As a : TBD
### I want : TBD
### so that: TBD

</treqs-elem>
```
**Example 4. template does not exist, the error message will be generated**
```
treqs create --type goal
Enter the label for the element [requirement]: goal
```
**Output**
```
No matching template found
```
**Example 5. Executing Treqs create with all available parameter**
```
treqs create --type goal  --amount 2 --label goal --template_folder C:\\Users\\SpEeDY\\Desktop --template goal
```
**Output**
```
<treqs-elem id="562b082f44a511ec930618dbf21d2949" type="goal">

goal

This is example template for goal
</treqs-elem>
<treqs-elem id="562c658344a511ec91f118dbf21d2949" type="goal">

goal

This is example template for goal
</treqs-elem>
```





</treqs-element>

<treqs-element id="4d7ca13c76ae11ebb811cf2f044815f7" type="requirement">

### 1.1 Unique IDs
TReqs shall assign a unique ID to each newly created element.
</treqs-element>

<treqs-element id="dab6fe5876cc11ebb811cf2f044815f7" type="requirement">

### 1.2 Create links

treqs createlink shall allow to generate treqs links via the createlink command. 

<treqs-link type="addresses" target="1e9885f69d3311eb859fc4b301c00591" />
</treqs-element>

<treqs-element id="274368b8220011ecb90df018989356c1" type="requirement">

### 1.3 Generate IDs

treqs shall allow to batch generate unique IDs via the generateid command.

The reason for this requirement is to facilitate copy+paste style creation of treqs elements, where only the ids need to be replaced.

<treqs-link type="addresses" target="1e9885f69d3311eb859fc4b301c00591" />
</treqs-element>
