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
      identifier = { name = "nsis"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2012-2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/nsis#readme";
      url = "";
      synopsis = "DSL for producing Windows Installer using NSIS.";
      description = "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers\nto create installers for Windows.\nThis library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much\nof the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should\nbe significantly more maintainable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "nsis-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nsis" or (errorHandler.buildDepError "nsis"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }