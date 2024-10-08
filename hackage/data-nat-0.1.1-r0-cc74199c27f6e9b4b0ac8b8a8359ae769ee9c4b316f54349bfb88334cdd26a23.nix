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
      identifier = { name = "data-nat"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Gábor Lehel";
      maintainer = "Gábor Lehel <illissius@gmail.com>";
      author = "Gábor Lehel";
      homepage = "http://github.com/glehel/data-nat";
      url = "";
      synopsis = "data Nat = Zero | Succ Nat";
      description = "The usual @data Nat = Zero | Succ Nat@ datatype with the appropriate instances.\n\nShould be portable to any Haskell 98 compiler which supports the @CPP@ extension.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.eq "7.4") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
    };
  }