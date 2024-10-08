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
      identifier = { name = "idringen"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 zjhmale";
      maintainer = "zjhmale@gmail.com";
      author = "Zheng Jihui";
      homepage = "https://github.com/zjhmale/idringen";
      url = "";
      synopsis = "A project manage tool for Idris.";
      description = "A general purpose project manage tool for Idris programming language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
        ];
        buildable = true;
      };
      exes = {
        "idrin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."idringen" or (errorHandler.buildDepError "idringen"))
          ];
          buildable = true;
        };
      };
    };
  }