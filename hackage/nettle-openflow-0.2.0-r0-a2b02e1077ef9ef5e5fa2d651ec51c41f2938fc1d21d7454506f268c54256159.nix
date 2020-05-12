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
      identifier = { name = "nettle-openflow"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy, Ashish Agarwal, John Launchbury";
      homepage = "";
      url = "";
      synopsis = "OpenFlow protocol messages, binary formats, and servers. ";
      description = "This package provides data types that model the messages of the OpenFlow protocol,\nfunctions that implement serialization and deserialization between these data\ntypes and their binary representations in the protocol, and an efficient OpenFlow server.\nThe library is under active development.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-strict" or (errorHandler.buildDepError "binary-strict"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }