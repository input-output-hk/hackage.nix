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
      identifier = { name = "splint"; version = "1.0.2.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "HLint as a GHC source plugin.";
      description = "Warning: This package is not maintained anymore.\n\nSplint makes HLint available as a GHC source plugin. To use it, pass\n@-fplugin=Splint@ to GHC. Any options passed to Splint are passed through to\nHLint. For example you can use @-fplugin-opt=Splint:'--ignore=Use concatMap'@\nto ignore the \"Use @concatMap@\" suggestion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ] ++ [ (hsPkgs."hlint" or (errorHandler.buildDepError "hlint")) ];
        buildable = true;
        };
      };
    }