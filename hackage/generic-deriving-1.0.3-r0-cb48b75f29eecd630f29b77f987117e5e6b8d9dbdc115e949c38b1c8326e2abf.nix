{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "generic-deriving";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "";
      url = "";
      synopsis = "Generic programming library for generalized deriving.";
      description = "This package provides functionality for generalizing the deriving mechanism\nin Haskell to arbitrary classes. It was first described in the paper:\n\n*  /A generic deriving mechanism for Haskell/.\nJose Pedro Magalhaes, Atze Dijkstra, Johan Jeuring, and Andres Loeh.\nHaskell'10.\n\nThe current implementation integrates with the new GHC Generics. See\n<http://www.haskell.org/haskellwiki/Generics> for more information.\nTemplate Haskell code is provided for supporting GHC before version 7.2.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.gt "7.0") (hsPkgs.ghc-prim);
      };
    };
  }