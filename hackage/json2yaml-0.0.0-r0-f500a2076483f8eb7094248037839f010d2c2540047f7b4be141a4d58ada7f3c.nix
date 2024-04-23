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
      specVersion = "1.2";
      identifier = { name = "json2yaml"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/json2yaml/tree/master";
      url = "";
      synopsis = "Utility to convert a file from JSON to YAML format.";
      description = "HsSyck cannot parse JSON files produced by the json\npackage. This is a simple utility to connect the two\nlibraries.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "json2yaml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
          ];
          buildable = true;
        };
      };
    };
  }