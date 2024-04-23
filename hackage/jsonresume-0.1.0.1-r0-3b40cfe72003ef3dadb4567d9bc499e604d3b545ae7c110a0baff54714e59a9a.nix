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
      identifier = { name = "jsonresume"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Daniel P. Wright";
      maintainer = "dani@dpwright.com";
      author = "Daniel P. Wright";
      homepage = "https://github.com/dpwright/jsonresume.hs";
      url = "";
      synopsis = "Parser and datatypes for the JSON Resume format";
      description = "The JSON Resume initiative (<http://jsonresume.org>) provides\na standard format for representing resumes/CVs in JSON\nform.  This library encodes that standard in Haskell\ndatatypes, and provides a parser to read a CV in the JSON\nResume format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }