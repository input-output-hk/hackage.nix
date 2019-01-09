{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Stack"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Robert Walker";
      maintainer = "rwlock404@yahoo.com";
      author = "Robert Walker";
      homepage = "https://en.wikipedia.org/wiki/Stack_(abstract_data_type)";
      url = "";
      synopsis = "Stack data structure type";
      description = "Stack implementation for Haskell.\n\n<<https://upload.wikimedia.org/wikipedia/commons/b/b4/Lifo_stack.png>>";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }