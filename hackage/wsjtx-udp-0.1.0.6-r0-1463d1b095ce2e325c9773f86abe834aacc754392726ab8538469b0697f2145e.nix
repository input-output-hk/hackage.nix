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
      identifier = { name = "wsjtx-udp"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc.Fontaine@gmx.de";
      author = "Marc Fontaine";
      homepage = "https://github.com/MarcFontaine/wsjtx-udp";
      url = "";
      synopsis = "WSJT-X UDP protocol";
      description = "Utilities for the WSJT-X UDP protocol.\nEncoding and decoding USP packages to binary and JSON and a UDP server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-parsers" or (errorHandler.buildDepError "binary-parsers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "wsjtx-dump-udp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wsjtx-udp" or (errorHandler.buildDepError "wsjtx-udp"))
            ];
          buildable = true;
          };
        };
      };
    }