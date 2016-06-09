role YAML::Node::Type {
  method Str   returns Str { * } #used for outputting YAML
  method name  returns Str { * } #pretty name for node type
  method parse(Str $data)  { * } #returns the value of the node or throws for parse error
}
