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
      specVersion = "2.4";
      identifier = { name = "ghc-tags-core"; version = "0.2.2.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020, Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/ghc-tags-plugin/tree/master/ghc-tags-core";
      url = "";
      synopsis = "a library to work with tags created from Haskell parsed tree";
      description = "=== library scope\n\n'ghc-tags-core' library provides:\n\n*  a function to extract /tag/ information from @'HsModule' 'GhcPs'@ parsed tree representation of Haskell code\n* parsers __ctag__ and __etag__ style tag files (/vim/ \\/ /emacs/)\n* formatting tags into __ctag__ and __etag__ files.\n* tries to be compatible with [universal-ctags](https://github.com/universal-ctags/ctags)\n\n=== developer tools\nCheck out these projects:\n\n* [ghc-tags-plugin](https://hackage.haskell.org/package/ghc-tags-plugin) -\na ghc [compiler\nplugin](https://ghc.gitlab.haskell.org/ghc/doc/users_guide/extending_ghc.html?highlight=compiler%20plugin#compiler-plugins)\nwhich extracts tags during @GHC@'s parser pass\n* more to come!\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")))
          ];
        buildable = true;
        };
      tests = {
        "ghc-tags-tests" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ghc-tags-core" or (errorHandler.buildDepError "ghc-tags-core"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."ghc-tags-core" or (errorHandler.buildDepError "ghc-tags-core"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }