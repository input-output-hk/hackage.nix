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
      identifier = { name = "snaplet-riak"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
      author = "Paul Wilson";
      homepage = "http://github.com/tmcgilchrist/snaplet-riak";
      url = "";
      synopsis = "A Snaplet for the Riak database";
      description = "A Snaplet allowing easy use of the Riak database within\nthe Snap framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."riak" or (errorHandler.buildDepError "riak"))
          (hsPkgs."riak-protobuf" or (errorHandler.buildDepError "riak-protobuf"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }