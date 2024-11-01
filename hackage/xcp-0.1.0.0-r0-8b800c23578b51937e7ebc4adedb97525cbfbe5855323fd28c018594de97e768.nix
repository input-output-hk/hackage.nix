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
      identifier = { name = "xcp"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "github@goschs.de";
      author = "Christian Gosch";
      homepage = "";
      url = "";
      synopsis = "Partial implementation of the XCP protocol with ethernet as transport layer.";
      description = "This library implements creating XCP packets for setting and retrieving\nvariables from a slave device using XCP. The transport layer is ethernet,\nimplemented in 'Network.XcpEth'. Other transport layers can be added easily\nand can use the same building blocks from 'Network.Xcp'.\nFor basic usage, see 'Network.XcpEth'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }