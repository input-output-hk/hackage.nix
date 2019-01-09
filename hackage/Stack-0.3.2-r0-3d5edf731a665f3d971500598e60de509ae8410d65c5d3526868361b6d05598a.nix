{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Stack"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Robert Walker";
      maintainer = "rwlock404@yahoo.com";
      author = "Robert Walker";
      homepage = "https://en.wikipedia.org/wiki/Stack_(abstract_data_type)";
      url = "";
      synopsis = "Stack data structure";
      description = "A stack is a basic data structure that can be logically thought as linear structure represented by a real physical stack or pile, a structure where insertion and deletion of items takes place at one end called top of the stack.\n\n<<https://upload.wikimedia.org/wikipedia/commons/b/b4/Lifo_stack.png>>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.nats) (hsPkgs.stm) ]; };
      };
    }