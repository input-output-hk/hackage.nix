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
      identifier = { name = "const-math-ghc-plugin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker, John Lato";
      homepage = "";
      url = "";
      synopsis = "Compiler plugin for constant math elimination";
      description = "This library implements elimination of constant math expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }