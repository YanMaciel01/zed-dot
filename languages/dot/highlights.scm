
;; Keywords
["strict" "graph" "digraph" "subgraph" "node" "edge"] @keyword

;; Operators
(operator) @operator
(edgeop) @operator

;; Punctuation
["[" "]" "{" "}" "<" ">"] @punctuation.bracket
[";" ","] @punctuation.delimiter

;; Attributes in attribute lists
(attribute
  name: (id (identifier) @property))

;; Node identifiers
(node_id 
  (id (identifier) @variable))

;; Literals
(string_literal) @string
(number_literal) @number

;; Comments and preprocessor
(comment) @comment
(preproc) @preproc

;; HTML content
(html_string) @string.special

;; Types
(attr_stmt
  ["graph" "node" "edge"] @type)

;; Subgraph
(subgraph
  id: (id (identifier)) @namespace)

;; Ports
(port (id) @constant)
