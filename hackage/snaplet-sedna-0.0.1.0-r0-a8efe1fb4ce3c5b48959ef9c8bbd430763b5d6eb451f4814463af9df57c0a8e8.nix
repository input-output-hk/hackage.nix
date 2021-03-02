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
      identifier = { name = "snaplet-sedna"; version = "0.0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Eric Jones (ericclaudejones at gmail.com)";
      author = "Eric C. Jones";
      homepage = "";
      url = "";
      synopsis = "Snaplet for Sedna Bindings. Essentailly a rip of snaplet-hdbc.";
      description = "Snaplet for Sedna native XML database bindings.\nhttp://www.sedna.org/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."sednaDBXML" or (errorHandler.buildDepError "sednaDBXML"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          ];
        buildable = true;
        };
      };
    }