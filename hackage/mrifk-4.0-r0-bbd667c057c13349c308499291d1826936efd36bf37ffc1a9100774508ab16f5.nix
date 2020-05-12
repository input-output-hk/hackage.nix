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
      identifier = { name = "mrifk"; version = "4.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ennisbaradine@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Decompiles Glulx files";
      description = "Update of the mrifk decompiler to modern Haskell";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mrifk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }