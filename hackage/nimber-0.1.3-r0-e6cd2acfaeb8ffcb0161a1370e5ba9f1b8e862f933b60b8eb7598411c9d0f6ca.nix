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
      identifier = { name = "nimber"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Anders Kaseorg";
      maintainer = "Anders Kaseorg <andersk@mit.edu>";
      author = "Anders Kaseorg <andersk@mit.edu>";
      homepage = "http://andersk.mit.edu/haskell/nimber/";
      url = "";
      synopsis = "Finite nimber arithmetic";
      description = "The finite nimbers, 'Nimber', are a quadratically closed field of\ncharacteristic 2 introduced in combinatorial game theory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }