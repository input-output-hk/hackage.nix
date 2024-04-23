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
      identifier = { name = "records-th"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "github.com/lassoinc/records-th";
      url = "";
      synopsis = "Template Haskell declarations for the records package";
      description = "Records-TH generates a variety of declarations for use with the records package,\nincluding datatypes, Name, FromJSON, ToJSON and Default instances, and a default field type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."records" or (errorHandler.buildDepError "records"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."kinds" or (errorHandler.buildDepError "kinds"))
          (hsPkgs."type-functions" or (errorHandler.buildDepError "type-functions"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }