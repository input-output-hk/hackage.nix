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
      identifier = { name = "hsmrc-marc8"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2026";
      maintainer = "";
      author = "NatLibFi Brunberg J";
      homepage = "https://codeberg.org/brunberg/hsmrc-marc8/";
      url = "";
      synopsis = "MARC-8 charset decoding library for hsmrc";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."hsmrc" or (errorHandler.buildDepError "hsmrc"))
        ];
        buildable = true;
      };
    };
  }