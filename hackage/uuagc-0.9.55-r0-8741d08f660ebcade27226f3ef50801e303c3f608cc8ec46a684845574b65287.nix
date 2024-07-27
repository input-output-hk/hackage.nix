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
    flags = { bootstrap_external = false; with-loag = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "uuagc"; version = "0.9.55"; };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Jeroen Bransen";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "https://github.com/UU-ComputerScience/uuagc";
      url = "";
      synopsis = "Attribute Grammar System of Universiteit Utrecht";
      description = "Generates Haskell files from an attribute grammar specification";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.uuagc-cabal or (pkgs.pkgsBuildBuild.uuagc-cabal or (errorHandler.setupDepError "uuagc-cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (flags.with-loag) (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"));
        buildable = true;
      };
      exes = {
        "uuagc" = {
          depends = [
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
          ];
          buildable = true;
        };
      };
    };
  }