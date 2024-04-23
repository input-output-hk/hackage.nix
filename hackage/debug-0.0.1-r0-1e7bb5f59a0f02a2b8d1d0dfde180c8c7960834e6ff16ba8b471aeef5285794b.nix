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
      specVersion = "1.18";
      identifier = { name = "debug"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/debug";
      url = "";
      synopsis = "Simple trace-based debugger";
      description = "An easy to use debugger for viewing function calls and intermediate variables.\nTo use, annotate the function under test, run the code, and view the generated web page.\nFull usage instructions are at \"Debug\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."js-jquery" or (errorHandler.buildDepError "js-jquery"))
        ];
        buildable = true;
      };
      tests = {
        "debug-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debug" or (errorHandler.buildDepError "debug"))
          ];
          buildable = true;
        };
      };
    };
  }