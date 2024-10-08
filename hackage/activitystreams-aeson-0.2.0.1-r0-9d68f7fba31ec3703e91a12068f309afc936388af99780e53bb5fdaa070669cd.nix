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
      identifier = { name = "activitystreams-aeson"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Getty Ritter";
      maintainer = "gettylefou@gmail.com";
      author = "Getty Ritter";
      homepage = "";
      url = "";
      synopsis = "An interface to the ActivityStreams specification";
      description = "An interface to the\n<http://activitystrea.ms/ Activity Streams>\nspecifications, using an @aeson@-based representation\nof the underlying ActivityStream structures.\nAn ActivityStream is a representation of social\nactivities in JSON format, using a standard set of\nstructures. The specification is very flexible in\nallowing most fields to be omitted, while also\nallowing arbitrary new fields to be created when\nnecessary. This library attempts to maximize\ntype safety while retaining the flexibility present\nin the specification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }