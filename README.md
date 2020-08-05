# Classic
>
----
## Table of Contents
[NAME](#name)
[SYNOPSIS](#synopsis)
[DESCRIPTION](#description)
[BUGS](#bugs)

----
# NAME
Template::Classic - Templates with arbitrary Perl 6 code inside them

# SYNOPSIS
```
use Template::Classic;

my &render-list := template :($title, @items), q:to/HTML/;
    <h1><%= $title %></h1>
    <ul>
        <% for @items -> $item { %>
            <li><%= $item %></li>
        <% } %>
    </ul>
    HTML

print render-list(｢Shopping list｣,
                  [｢Cheese｣, ｢Bacon｣]);
```
# DESCRIPTION
Templates are strings with `<% %>`-delimited snippets of Perl 6 code inside them. Embedded Perl 6 code can use _take_ to emit strings into the rendered template. In addition, `<%= %>` delimiters can be used to emit the result of evaluating an expression. This value is converted to a string by calling its _.Str_ method and special HTML characters are escaped.





## sub template (Signature:D $sig, Str:D $source --> Routine:D) 

Compile a template into a subroutine with the given signature. Parameters specified in the signature are available within the template.

 ## sub escape ($_ --> Str:D) 

Translate <, >, &, ", ' to their corresponding entities. The former three are translated to avoid conflict with tags and entities. The latter two are translated to avoid conflict with attribute value delimiters.

 # BUGS
Due to a bug in Rakudo this module compiles the template only on the first call to the template, rather than immediately when _template_ is called. This will be fixed in a future version and must not be relied upon.








----
Rendered from Classic at 2020-08-05T17:34:24Z