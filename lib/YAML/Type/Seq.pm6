use YAML::Node::Type;

class YAML::Type::Seq {
  method Str  returns Str { };
  method name returns Str {
    'seq';
  }
}
