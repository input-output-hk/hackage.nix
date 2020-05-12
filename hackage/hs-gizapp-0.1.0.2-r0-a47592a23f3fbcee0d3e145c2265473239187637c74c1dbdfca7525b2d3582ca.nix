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
      identifier = { name = "hs-gizapp"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <E.Y.Kow@brighton.ac.uk>";
      author = "Eric Kow";
      homepage = "";
      url = "";
      synopsis = "Haskell wrapper around the GIZA++ toolkit.";
      description = "This provides a simple wrapper around the GIZA++ toolkit,\nwhich is used for Statistical Machine Translation for\ntraining IBM Models 1-5 and an HMM word alignment model.\nSee <http://code.google.com/p/giza-pp/> for more details on\nGIZA++\n\nThis work was made possible by EPSRC grant (EP\\/E029116\\/1)\n\ndarcs get <http://code.haskell.org/~kowey/hs-gizapp>\n\nNote that while this wrapper is BSD3 licensed, GIZA++\nitself is released under GPLv2.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }