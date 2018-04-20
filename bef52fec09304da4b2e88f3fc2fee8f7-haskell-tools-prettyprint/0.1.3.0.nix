{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-tools-prettyprint";
          version = "0.1.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nboldi@elte.hu";
        author = "Boldizsar Nemeth";
        homepage = "https://github.com/haskell-tools/haskell-tools";
        url = "";
        synopsis = "Pretty printing of Haskell-Tools AST";
        description = "Converts the Haskell-Tools AST to the original source text. Works using the source annotations that are present in the AST. Creates a rose tree first to simplify the conversion.";
        buildType = "Simple";
      };
      components = {
        haskell-tools-prettyprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.references
            hsPkgs.haskell-tools-ast
            hsPkgs.haskell-tools-ast-trf
            hsPkgs.split
          ];
        };
      };
    }