{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "th-reify-many"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/th-reify-many";
      url = "";
      synopsis = "Recurseively reify template haskell datatype info";
      description = "@th-reify-many@ provides functions for recursively reifying top\nlevel declarations.  The main intended use case is for enumerating\nthe names of datatypes reachable from an initial datatype, and\npassing these names to some function which generates instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
        ];
        buildable = true;
      };
    };
  }