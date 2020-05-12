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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atom-basic"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Carl Baatz";
      maintainer = "carl.baatz@gmail.com";
      author = "Carl Baatz";
      homepage = "";
      url = "";
      synopsis = "Basic Atom feed construction";
      description = "This library provides a type for an Atom feed\n(http://tools.ietf.org/html/rfc4287) and a way to produce its XML. XML is\nconstructed with the help of a record of construction functions (`XMLGen`)\nthat you provide. This allows you to easily use this with the XML library\nof your choice.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          ] ++ [
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }