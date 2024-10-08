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
    flags = { runtimegecode = false; debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monadiccp"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom.schrijvers@cs.kuleuven.be";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://www.cs.kuleuven.be/~toms/Haskell/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Monadic Constraint Programming framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        libs = pkgs.lib.optionals (flags.runtimegecode) [
          (pkgs."gecodesupport" or (errorHandler.sysDepError "gecodesupport"))
          (pkgs."gecodeset" or (errorHandler.sysDepError "gecodeset"))
          (pkgs."gecodeint" or (errorHandler.sysDepError "gecodeint"))
          (pkgs."gecodekernel" or (errorHandler.sysDepError "gecodekernel"))
          (pkgs."gecodesearch" or (errorHandler.sysDepError "gecodesearch"))
        ];
        buildable = true;
      };
    };
  }