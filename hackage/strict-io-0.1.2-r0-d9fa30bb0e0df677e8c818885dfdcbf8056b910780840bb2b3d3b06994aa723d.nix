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
      identifier = { name = "strict-io"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A library wrapping standard IO modules to provide strict IO.";
      description = "This library is a thin layer on top standard IO modules like System.IO\nand Data.IORef that re-expose these functions under a different type, namely SIO.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          ];
        buildable = true;
        };
      };
    }