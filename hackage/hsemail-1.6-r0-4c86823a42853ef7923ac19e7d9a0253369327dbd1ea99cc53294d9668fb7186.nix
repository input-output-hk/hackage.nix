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
      identifier = { name = "hsemail"; version = "1.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2010 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>, Gero Kriependorf <gero@physra.com>, Marty Pauley <marty@kasei.com>";
      homepage = "http://gitorious.org/hsemail";
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