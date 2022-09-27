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
      specVersion = "2.2";
      identifier = { name = "proteome"; version = "0.9.10"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2022 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/proteome#readme";
      url = "";
      synopsis = "Neovim Project Manager";
      description = "See https://hackage.haskell.org/package/proteome/docs/Proteome.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chiasma" or (errorHandler.buildDepError "chiasma"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."exon" or (errorHandler.buildDepError "exon"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-regex-pcre" or (errorHandler.buildDepError "lens-regex-pcre"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."nonempty-zipper" or (errorHandler.buildDepError "nonempty-zipper"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-chronos" or (errorHandler.buildDepError "polysemy-chronos"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-process" or (errorHandler.buildDepError "polysemy-process"))
          (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          (hsPkgs."ribosome" or (errorHandler.buildDepError "ribosome"))
          (hsPkgs."ribosome-host" or (errorHandler.buildDepError "ribosome-host"))
          (hsPkgs."ribosome-menu" or (errorHandler.buildDepError "ribosome-menu"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."streamly-process" or (errorHandler.buildDepError "streamly-process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      exes = {
        "proteome" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
            (hsPkgs."proteome" or (errorHandler.buildDepError "proteome"))
            ];
          buildable = true;
          };
        };
      };
    }