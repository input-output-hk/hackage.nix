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
      specVersion = "2.2";
      identifier = { name = "splint"; version = "1.0.1.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "HLint as a GHC source plugin.";
      description = "Splint makes HLint 3 available as a GHC source plugin. To use it, pass\n@-fplugin=Splint@ to GHC. Any options passed to Splint are passed through to\nHLint. For example you can use @-fplugin-opt=Splint:'--ignore=Use concatMap'@\nto ignore the \"Use @concatMap@\" suggestion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
        buildable = true;
        };
      };
    }