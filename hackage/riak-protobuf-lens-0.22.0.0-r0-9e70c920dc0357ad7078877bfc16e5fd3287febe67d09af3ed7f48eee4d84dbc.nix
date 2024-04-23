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
      identifier = { name = "riak-protobuf-lens"; version = "0.22.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>, Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "";
      homepage = "https://github.com/riak-haskell-client/riak-haskell-client#readme";
      url = "";
      synopsis = "Lenses for riak-protobuf";
      description = "A set of Haskell lenses for interacting with the protocol buffer\nAPI of the Riak decentralized data store.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."riak-protobuf" or (errorHandler.buildDepError "riak-protobuf"))
        ];
        buildable = true;
      };
      exes = {
        "generate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."riak-protobuf" or (errorHandler.buildDepError "riak-protobuf"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }