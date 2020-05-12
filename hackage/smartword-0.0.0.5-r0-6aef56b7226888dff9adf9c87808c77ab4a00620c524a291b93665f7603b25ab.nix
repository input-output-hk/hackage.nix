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
      specVersion = "1.2";
      identifier = { name = "smartword"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "http://kyagrd.dyndns.org/~kyagrd/project/smartword/";
      url = "";
      synopsis = "Web based flash card for Word Smart I and II vocabularies";
      description = "Web based online study tool for all vocabularies in Word Smart I and II,\na poular book series for studying GRE vocabularies.\n(FYI, I typed the vocabulary data and wrote the program in 2004,\nbecause I got too boring just going over the strange English words.)\nIf you don't read Korean, you can just ignore the Korean translation.\nInstallation:\nYou can either compile CGI binaries with GHC\nor use Hugs to run lhs as a CGI script.\nCopy all .cgi files and data directories (book1, book1.ans, book2, book2.ans)\ninto your webserver CGI directory (usually cgi-bin).\nUsage:\nIf you get it wright the flash card goes away,\nbut if you didn't get it the flash card goes to the bottom of the deck again.\nSo, it won't end until you get all of them right.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "answer.cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "index.cgi" = { buildable = true; };
        "start.cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "sw.cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }