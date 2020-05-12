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
      specVersion = "1.10";
      identifier = { name = "graphmod-plugin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "A reimplementation of graphmod as a source plugin";
      description = "A reimplementation of graphmod as a source plugin.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
          ];
        buildable = true;
        };
      exes = {
        "graphmod-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."graphmod-plugin" or (errorHandler.buildDepError "graphmod-plugin"))
            ];
          buildable = true;
          };
        };
      };
    }