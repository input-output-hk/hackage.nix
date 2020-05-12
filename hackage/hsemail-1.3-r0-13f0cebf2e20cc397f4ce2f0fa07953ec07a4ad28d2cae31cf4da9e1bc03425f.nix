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
      specVersion = "0";
      identifier = { name = "hsemail"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/hsemail/";
      url = "";
      synopsis = "Internet Message Parsers";
      description = "Parsers for the syntax defined in RFC2821 and 2822";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }