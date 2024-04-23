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
    flags = { gtp-check = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ghc-tags-plugin"; version = "0.6.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020-2022, Marcin Szamotulski";
      maintainer = "coot@coot.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/ghc-tags-plugin#readme";
      url = "";
      synopsis = "A compiler plugin which generates tags file from GHC parsed syntax tree.";
      description = "A [GHC compiler plugin](https://ghc.gitlab.haskell.org/ghc/doc/users_guide/extending_ghc.html?highlight=compiler%20plugin#compiler-plugins)\nwhich takes parsed Haskell representation @HsModule GhcPs@,\nextracts __tags__ information and saves it either in __ctags__ or\n__etags__ format.  For a standalone `ghc-tags` command look for or\n[ghc-tags](https://hackage.haskell.org/package/ghc-tags) or its\n[fork](https://github.com/coot/ghc-tags) (the fork is using `ghc-tags-core`,\nthe same library which `ghc-tags-plugin` is using).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."lukko" or (errorHandler.buildDepError "lukko"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ [
          (hsPkgs."ghc-tags-core" or (errorHandler.buildDepError "ghc-tags-core"))
          (hsPkgs."ghc-tags-pipes" or (errorHandler.buildDepError "ghc-tags-pipes"))
        ];
        buildable = true;
      };
      exes = {
        "gtp-check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-tags-plugin" or (errorHandler.buildDepError "ghc-tags-plugin"))
          ];
          buildable = if flags.gtp-check then true else false;
        };
      };
    };
  }