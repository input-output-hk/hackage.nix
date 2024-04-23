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
      specVersion = "1.6";
      identifier = { name = "hswip"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Evgeny Tarasov";
      maintainer = "etarasov.ekb@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "embedding prolog in haskell";
      description = "Library for embedding swi-prolog in haskell inspired by pyswip.\nYou should install swi-prolog in order to use the library.\nIt is recommended to use swi-prolog-5.10 or newer.\nIf you encounter troubles related to libswipl linking, you need to fix extra-lib-dirs parameter in hswipr.cabal to find libswipl.a in your system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [
          (pkgs."swipl" or (errorHandler.sysDepError "swipl"))
          (pkgs."readline" or (errorHandler.sysDepError "readline"))
          (pkgs."ncurses" or (errorHandler.sysDepError "ncurses"))
        ];
        buildable = true;
      };
    };
  }