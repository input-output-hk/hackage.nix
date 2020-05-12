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
      identifier = { name = "data-object"; version = "0.3.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/snoyberg/data-object/tree/master";
      url = "";
      synopsis = "Represent hierachichal structures, called objects in JSON.";
      description = "These objects show up in different places, eg JSON, Yaml.\nBy providing a representation in a separate repository,\nother libraries can share a single representation of\nthese structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          ];
        buildable = true;
        };
      };
    }