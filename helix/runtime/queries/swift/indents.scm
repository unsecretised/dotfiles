; Brace-delimited bodies
[
  (class_body)
  (enum_class_body)
  (protocol_body)
  (function_body)
  (computed_property)
  (lambda_literal)
  (willset_didset_block)
  (willset_clause)
  (didset_clause)
  (protocol_property_requirements)
  (precedence_group_declaration)
] @indent

; Statement-level constructs with body blocks
[
  (for_statement)
  (while_statement)
  (repeat_while_statement)
  (do_statement)
  (if_statement)
  (switch_statement)
  (guard_statement)
  (catch_block)
] @indent

; Multi-line parenthesized/bracketed expressions
[
  (tuple_expression)
  (tuple_type)
  (value_arguments)
  (type_parameters)
  (array_literal)
  (dictionary_literal)
  (array_type)
  (dictionary_type)
  (call_expression)
] @indent

; Closing delimiters
[
  "}"
  "]"
  ")"
  ">"
] @outdent

; Switch case/default labels outdent
(switch_entry
  .
  _ @outdent)

; else, catch, and repeat-while keywords dedent
(if_statement
  "else" @outdent)
(do_statement
  "catch" @outdent)
(repeat_while_statement
  "while" @outdent)