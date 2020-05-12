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
      identifier = { name = "trasa-client"; version = "0.2"; };
      license = "MIT";
      copyright = "@2017 Kyle McKean";
      maintainer = "mckean.kylej@gmail.com";
      author = "Kyle McKean";
      homepage = "";
      url = "";
      synopsis = "Type safe http requests";
      description = "Http client integration for trasa";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."trasa" or (errorHandler.buildDepError "trasa"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."trasa" or (errorHandler.buildDepError "trasa"))
            (hsPkgs."trasa-client" or (errorHandler.buildDepError "trasa-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }