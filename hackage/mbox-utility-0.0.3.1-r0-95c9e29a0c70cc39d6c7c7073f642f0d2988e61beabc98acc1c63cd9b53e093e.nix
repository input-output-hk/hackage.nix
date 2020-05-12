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
      identifier = { name = "mbox-utility"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "List contents of an mbox file containing e-mails";
      description = "List contents of an mbox file containing e-mails.\nThis is intended for post-processing by the @cutter@ command.\nSee <http://hackage.haskell.org/package/cutter>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lsmbox" = {
          depends = [
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."spreadsheet" or (errorHandler.buildDepError "spreadsheet"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }