{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "writer-cps-transformers";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Daniel Mendler";
        maintainer = "mail@daniel-mendler.de";
        author = "Andy Gill, Ross Paterson, Daniel Mendler";
        homepage = "https://github.com/minad/writer-cps-transformers#readme";
        url = "";
        synopsis = "WriteT and RWST monad transformers";
        description = "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Lazy. The corresponding MTL class instances are in the package writer-cps-mtl (<https://hackage.haskell.org/package/writer-cps-mtl>).";
        buildType = "Simple";
      };
      components = {
        writer-cps-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }