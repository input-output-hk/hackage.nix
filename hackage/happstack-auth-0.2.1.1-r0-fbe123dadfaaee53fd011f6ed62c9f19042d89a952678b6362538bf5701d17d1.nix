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
      identifier = { name = "happstack-auth"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@n-sch.de";
      author = "Nils Schweinsberg";
      homepage = "http://n-sch.de/happstack-auth";
      url = "";
      synopsis = "A Happstack Authentication Suite";
      description = "An easy way to to implement user authentication for\nHappstack web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
          (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-ixset" or (errorHandler.buildDepError "happstack-ixset"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          ];
        buildable = true;
        };
      };
    }