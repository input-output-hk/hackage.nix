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
    flags = { ghc-lib = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ghc-tags-core"; version = "0.5.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020-2022, Marcin Szamotulski";
      maintainer = "coot@coot.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/ghc-tags-plugin#readme";
      url = "";
      synopsis = "a library to work with tags created from Haskell parsed tree";
      description = "=== library scope\n.\n'ghc-tags-core' library provides:\n.\n* a function to extract /tag/ information from @'HsModule' 'GhcPs'@ parsed tree representation of Haskell code,\n* parsers for __ctag__ and __etag__ style tag files (/vim/ \\/ /emacs/),\n* formatting tags into __ctag__ and __etag__ files,\n* tries to be compatible with [universal-ctags](https://github.com/universal-ctags/ctags).\n.\n=== developer tools\nCheck out these projects:\n.\n* [ghc-tags](https://hackage.haskell.org/package/ghc-tags) - a standalone ghc tags generator;\n* [ghc-tags-plugin](https://hackage.haskell.org/package/ghc-tags-plugin) -\n  a ghc [compiler\n  plugin](https://ghc.gitlab.haskell.org/ghc/doc/users_guide/extending_ghc.html?highlight=compiler%20plugin#compiler-plugins)\n  which extracts tags during @GHC@'s parser pass and from TH splices.\n.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ (if flags.ghc-lib
          then [ (hsPkgs."ghc-lib" or (errorHandler.buildDepError "ghc-lib")) ]
          else [ (hsPkgs."ghc" or (errorHandler.buildDepError "ghc")) ]);
        buildable = true;
      };
    };
  }