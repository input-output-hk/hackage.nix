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
      identifier = { name = "decode-utf8"; version = "1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Decode a UTF-8 byte stream on standard input";
      description = "This package implements a simple utility to decode a UTF-8 byte stream\nfed in on standard input, displaying the valid Unicode characters read\nand the invalid bytes.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "decode-utf8" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opentheory-unicode" or (errorHandler.buildDepError "opentheory-unicode"))
            (hsPkgs."api-opentheory-unicode" or (errorHandler.buildDepError "api-opentheory-unicode"))
          ];
          buildable = true;
        };
      };
    };
  }