{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "one-liner";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/one-liner";
        url = "";
        synopsis = "Constraint-based generics";
        description = "Write short and concise generic instances of type classes.\n\nThere are two separate parts: @Generics.OneLiner@ is for\nwriting generic functions using @GHC.Generics@.\nThe other modules show how to implement these same generic\nfunctions with a traversal-style generics type class,\nwithout the use of an intermediate generic representation\ntype.";
        buildType = "Simple";
      };
      components = {
        "one-liner" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.ghc-prim
          ];
        };
      };
    }