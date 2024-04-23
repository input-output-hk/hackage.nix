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
      identifier = { name = "poker-eval"; version = "0.3.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "David Himmelstrup";
      homepage = "";
      url = "";
      synopsis = "Binding to libpoker-eval";
      description = "Performance oriented functions for judging poker hands\nand related tasks.\n\nHaddock documentation can be found here: <http://mirror.seize.it/poker-eval/documentation/>\n\nC library can be found here: <http://pokersource.sourceforge.net/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."poker-eval" or (errorHandler.sysDepError "poker-eval"))
        ];
        buildable = true;
      };
    };
  }