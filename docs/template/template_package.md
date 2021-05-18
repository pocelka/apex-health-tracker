# {{toUpperCase name}}

{{#if global}}
## Package Description
{{{global.description.full}}}
{{/if}}

{{#if types}}
- [Data Types](#types)
{{/if}}

{{#if constants}}
- [Constants](#constants)
{{/if}}

{{#if exceptions}}
- [Exceptions](#exceptions)
{{/if}}

{{#each methods}}
- [{{toUpperCase name}} {{initCap type}}](#{{name}})
{{/each}}

{{! Types}}
{{#each types}}
{{#if @first}}
## Types<a name="types"></a>

Name | Code | Description
--- | --- | ---{{/if}}{{! first}}
{{name}} | <pre>{{{lineBreakToBr code}}}</pre> | {{{description}}}{{/each}}
{{! types}}

{{! Constants}}
{{#each constants}}
{{#if @first}}
## Constants<a name="constants"></a>

Name | Code | Description
--- | --- | ---{{/if}}{{! first}}
{{name}} | <pre>{{{lineBreakToBr code}}}</pre> | {{description}}{{/each}}
{{! constants}}

{{! Exceptions}}
{{#each exceptions}}
{{#if @first}}
## Exceptions<a name="exceptions"></a>

Name | Code | Description
--- | --- | ---{{/if}}{{! first}}
{{name}} | <pre>{{{lineBreakToBr code}}}</pre> | {{description}}{{/each}}
{{! exceptions}}

{{! Var}}
{{#each var}}
{{#if @first}}
## Var<a name="var"></a>

Name | Code | Description
--- | --- | ---{{/if}}{{! first}}
{{name}} | `{{{code}}}` | {{description}}{{/each}}
{{! constants}}


{{#each methods}}
{{#unless isPrivate}} {{! Don't show private methods}}
## {{toUpperCase name}} {{initCap type}}<a name="{{name}}"></a>


{{! Additional "p" tag required to wrap ul statements }}
<p>
{{{lineBreakToBr description.full}}}
</p>

### Syntax
```plsql
{{{header}}}
```

{{#ifCond params.length '||' return}}
### Parameters
Name | Description
--- | ---
{{#each params}}
`{{name}}` | {{{description}}}
{{/each}}
{{#if return}}
*return* | {{return}}
{{/if}} {{! return}}
{{/ifCond}} {{! displayParams}}


{{#ifCond issues.length '||' return}}
### Revision History
Date | Description
--- | ---
{{#each issues}}
`{{number}}` | {{{description}}}
{{/each}}
{{/ifCond}} {{! displayParams}}


{{#if example}}
### Example
```plsql
{{{example}}}
```
{{/if}}

{{#if throws.length}}
### Thrown exceptions
{{#each throws}}
*throws* {{{description}}}
{{/each}}
{{/if}}

{{!-- Uncomment if you want properties included in docs
### Properties
Name | Description
--- | ---
Author | {{{author}}}
Created | {{{created}}}
 --}}

{{/unless}}
{{/each}} {{! methods }}
