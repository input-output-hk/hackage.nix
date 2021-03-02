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
      specVersion = "1.0";
      identifier = { name = "hsemail-ns"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Peter Simons <simons@cryp.to>, Joe Fredette <jfredett@gmail.com>";
      homepage = "http://patch-tag.com/r/hsemail-ns/home";
      url = "";
      synopsis = "Internet Message Parsers";
      description = "Nonstandard parsers for the syntax defined in RFC2822, forked from hsemail proper. Should not be used for parsing incoming emails, only emails stored on disk.";
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