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
      identifier = { name = "xmlbf-xmlhtml"; version = "0.2.2"; };
      license = "Apache-2.0";
      copyright = "Copyright 2017-2018 Renzo Carbonara";
      maintainer = "ren§ren*zone";
      author = "Renzo Carbonara";
      homepage = "https://gitlab.com/k0001/xmlbf";
      url = "";
      synopsis = "xmlhtml backend support for the xmlbf library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."xmlbf" or (errorHandler.buildDepError "xmlbf"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmlbf" or (errorHandler.buildDepError "xmlbf"))
            (hsPkgs."xmlbf-xmlhtml" or (errorHandler.buildDepError "xmlbf-xmlhtml"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }