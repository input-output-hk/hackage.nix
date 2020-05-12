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
      specVersion = "1.6";
      identifier = { name = "unlambda"; version = "0.1.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Nikolay Amiantov <ab@fmap.me>";
      author = "Ørjan Johansen <oerjan@nvg.ntnu.no>\nDon Stewart <http://www.cse.unsw.edu.au/~dons>";
      homepage = "";
      url = "";
      synopsis = "Unlambda interpreter";
      description = "This is an interpreter of the Unlambda language,\nwritten in the pure, lazy, functional language Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "unlambda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }