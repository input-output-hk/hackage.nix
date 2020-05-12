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
      specVersion = "1.2";
      identifier = { name = "Homology"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "damek@math.ucla.edu";
      author = "Damek Davis";
      homepage = "http://www.math.ucla.edu/~damek";
      url = "";
      synopsis = "Compute the homology of a chain complex";
      description = "This package currently computes the homology of a chain complex over Z/2Z.          ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }