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
      specVersion = "1.6";
      identifier = { name = "IPv6Addr"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011 - Michel Boucey";
      maintainer = "Michel Boucey <michel.boucey@gmail.com>";
      author = "Michel Boucey <michel.boucey@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library to deal with the IPv6 address's text representation.";
      description = "Library to deal with IPv6 addresse's text representation with validation against RFC 4291 and canonization in conformation with RFC 5952.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }