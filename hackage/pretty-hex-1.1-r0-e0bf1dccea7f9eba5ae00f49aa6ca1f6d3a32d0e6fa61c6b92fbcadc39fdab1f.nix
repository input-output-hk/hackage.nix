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
      identifier = { name = "pretty-hex"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Mertens <emertens@galois.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A library for hex dumps of ByteStrings";
      description = "This library generates pretty hex dumps of ByteStrings in the\nstyle of other common *nix hex dump tools.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }