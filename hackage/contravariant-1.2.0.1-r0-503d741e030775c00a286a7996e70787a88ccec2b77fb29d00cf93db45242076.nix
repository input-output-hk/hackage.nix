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
    flags = { tagged = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "contravariant"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2007-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/contravariant/";
      url = "";
      synopsis = "Contravariant functors";
      description = "Contravariant functors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ] ++ (pkgs.lib).optional (flags.tagged && !(compiler.isGhc && (compiler.version).ge "7.7")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }