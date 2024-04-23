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
      identifier = { name = "hetzner"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      author = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      homepage = "";
      url = "";
      synopsis = "Hetzner Cloud and DNS library.";
      description = "Hetzner Cloud and DNS library. Check the readme and documentation for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."country" or (errorHandler.buildDepError "country"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
      tests = {
        "hetzner-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hetzner" or (errorHandler.buildDepError "hetzner"))
          ];
          buildable = true;
        };
      };
    };
  }