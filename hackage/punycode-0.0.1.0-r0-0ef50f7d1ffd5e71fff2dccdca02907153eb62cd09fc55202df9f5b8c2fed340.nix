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
      identifier = { name = "punycode"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen";
      homepage = "";
      url = "";
      synopsis = "Punycode encoder";
      description = "Punicode library to uniquely and reversibly transform a\nUnicode string into an ASCII string. This is a partial\nimplementation of RFC 3492: Punycode: A Bootstring encoding\nof Unicode for Internationalized Domain Names in\nApplications (IDNA). 0.0.2.0 will ship with support for\nPunycode decoding. The code is currently prototyped and\nuntested.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
        ];
        buildable = true;
      };
    };
  }