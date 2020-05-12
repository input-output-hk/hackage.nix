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
      identifier = { name = "js-dgtable"; version = "0.5.2"; };
      license = "MIT";
      copyright = "Neil Mitchell 2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/js-dgtable#readme";
      url = "";
      synopsis = "Obtain minified jquery.dgtable code";
      description = "This package bundles the minified <https://github.com/danielgindi/jquery.dgtable jquery.dgtable> code into a Haskell package,\nso it can be depended upon by Cabal packages. The first three components of\nthe version number match the upstream jquery.dgtable version. The package is designed\nto meet the redistribution requirements of downstream users (e.g. Debian).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "js-dgtable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."js-dgtable" or (errorHandler.buildDepError "js-dgtable"))
            ];
          buildable = true;
          };
        };
      };
    }