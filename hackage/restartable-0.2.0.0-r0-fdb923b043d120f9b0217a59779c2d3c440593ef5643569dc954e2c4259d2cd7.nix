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
      specVersion = "1.12";
      identifier = { name = "restartable"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "'2020";
      maintainer = "mjgajda@migamake.com";
      author = "Michał J. Gajda";
      homepage = "https://github.com/mjgajda/restartable#readme";
      url = "";
      synopsis = "Minimal live coding library for model-view-event-update applications.";
      description = "Minimal live coding library.\nIt can store model of the model-view-event-update applications.\nIt uses `FromJSON` and `ToJSON` with default value\nfor absent data elements, and `Generic` parser otherwise:\n\n> import Initially(initially, Initial)\n> data MyModel = Model { timestamp :: UTCTime }\n> instance ToJSON MyModel where\n> instance FromJSON MyModel where\n>   parseJSON = initially myDefaultValue\n> instance Initial MyModel\n>\n> main = restartable\n\nIt is preferred to attach initial value to every substructure,\nso whenever it fails to parse the remaining part of the state is still parsed correctly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }