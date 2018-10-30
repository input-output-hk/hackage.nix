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
        name = "haskell-tools-ast-fromghc";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/nboldi/haskell-tools";
      url = "";
      synopsis = "Creating the Haskell-Tools AST from GHC's representations";
      description = "This package collects information from various representations of a Haskell program in GHC";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.references)
          (hsPkgs.bytestring)
          (hsPkgs.safe)
          (hsPkgs.uniplate)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }