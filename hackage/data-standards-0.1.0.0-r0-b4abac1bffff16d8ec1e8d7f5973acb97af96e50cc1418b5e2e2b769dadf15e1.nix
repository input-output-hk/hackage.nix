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
      identifier = { name = "data-standards"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Samuel May";
      maintainer = "ag.eitilt@gmail.com";
      author = "Samuel May";
      homepage = "https://github.com/ag-eitilt/data-standards";
      url = "";
      synopsis = "A collection of standards representable by simple data types.";
      description = "Type-safe representations of the country codes described by\nthe ISO 3166-1 specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }