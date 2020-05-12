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
      identifier = { name = "language-go"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "and_j_rob@yahoo.com";
      author = "Andrew Robbins";
      homepage = "";
      url = "";
      synopsis = "A library for analysis and synthesis of Go code.";
      description = "Language-Go is a library for analysis and generation of the Go programming language code.\nIt allows strict modeling of the syntax of Go very similar to other language libraries.\nFor more information on the language specification, see golang.org.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }