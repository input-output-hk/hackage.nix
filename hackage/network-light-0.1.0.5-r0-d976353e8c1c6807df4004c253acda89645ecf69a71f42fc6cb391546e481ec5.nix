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
    flags = { zephyr = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "network-light"; version = "0.1.0.5"; };
      license = "Apache-2.0";
      copyright = "2025 Robert Krook";
      maintainer = "robert@krook.dev";
      author = "Robert Krook";
      homepage = "";
      url = "";
      synopsis = "A slimmed down version of network";
      description = "A slimmed down version of network, that works with both GHC and MHS. Very incomplete -- pull-requests welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "test-sockaddr-storable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-light" or (errorHandler.buildDepError "network-light"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }