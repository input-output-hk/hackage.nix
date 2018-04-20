{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "maam";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "david.darais@gmail.com";
        author = "David Darais";
        homepage = "";
        url = "";
        synopsis = "An application of the Galois Transformers framework to two example semantics.";
        description = "An application of the Galois Transformers framework to two example semantics.";
        buildType = "Simple";
      };
      components = {
        maam = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.directory
            hsPkgs.Cabal
          ];
        };
        exes = {
          maam = {
            depends  = [ hsPkgs.maam ];
          };
        };
      };
    }