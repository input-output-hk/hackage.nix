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
      identifier = { name = "hsemail-ns"; version = "1.7.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Peter Simons";
      maintainer = "phlummox2@gmail.com";
      author = "Peter Simons <simons@cryp.to>, Gero Kriependorf <gero-dev@physra.net>, Marty Pauley <marty@kasei.com>, Joe Fredette <jfredett@gmail.com>, Phlummox <phlummox2@gmail.com>";
      homepage = "https://github.com/phlummox/hsemail-ns/tree/hsemail-ns";
      url = "";
      synopsis = "Internet Message Parsers";
      description = "Nonstandard parsers for the syntax defined in RFC2822, forked from hsemail proper - permits lf line-ends in addition to crlf. Should not be used for parsing incoming emails, only emails stored on disk.";
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
      tests = {
        "test-hsemail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
        "doctest-hsemail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }