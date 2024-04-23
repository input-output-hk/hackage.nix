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
      specVersion = "1.10";
      identifier = { name = "ghostscript-parallel"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/ghostscript-parallel";
      url = "";
      synopsis = "Let Ghostscript render pages in parallel";
      description = "This is intended for rendering PostScript or PDF documents using Ghostscript.\nGhostscript has the option @-dNumRenderingThreads@\nbut it does not speedup pretty much,\nbecause it renders each page using multiple threads.\n\nThis program runs Ghostscript multiple times on distinct page subsets,\nsuch that Ghostscript can render pages in parallel.\n\n@gs-parallel@ has its own options,\ninterprets them and converts and passes them to @gs@,\nbut it also allows to pass custom options to @gs@ after @--@.\n\nRun it like so:\n\n> gs-parallel input.pdf frames-%04d.png \\\n>     -- -sDEVICE=png16m -dNOPAUSE -dBATCH";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gs-parallel" = {
          depends = [
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }