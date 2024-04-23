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
      specVersion = "2.4";
      identifier = { name = "ghc-tags-plugin"; version = "0.5.2.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020-2022, Marcin Szamotulski";
      maintainer = "coot@coot.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/ghc-tags-plugin#readme";
      url = "";
      synopsis = "A compiler plugin which generates tags file from GHC parsed syntax tree.";
      description = "A [GHC compiler plugin](https://ghc.gitlab.haskell.org/ghc/doc/users_guide/extending_ghc.html?highlight=compiler%20plugin#compiler-plugins)\nwhich takes parsed Haskell representation @HsModule GhcPs@,\nextracts __tags__ information and saves it either in __ctags__ or\n__etags__ format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."lukko" or (errorHandler.buildDepError "lukko"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ [
          (hsPkgs."ghc-tags-core" or (errorHandler.buildDepError "ghc-tags-core"))
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