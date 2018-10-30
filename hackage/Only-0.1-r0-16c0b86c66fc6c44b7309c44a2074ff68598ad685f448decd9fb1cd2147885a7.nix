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
      specVersion = "1.10";
      identifier = {
        name = "Only";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "The 1-tuple type or single-value \"collection\"";
      description = "This package provides the canonical anonymous 1-tuple type missing from Haskell for attaching typeclass instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.ghc-prim);
      };
    };
  }