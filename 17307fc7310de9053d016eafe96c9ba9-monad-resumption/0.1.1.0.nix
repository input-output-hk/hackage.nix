{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-resumption";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian Graves <thegravian@gmail.com>";
        author = "Ian Graves, Adam Procter";
        homepage = "https://github.com/igraves/resumption_monads";
        url = "";
        synopsis = "Resumption and reactive resumption monads for Haskell.";
        description = "This package contains the definitions of Resumption and Reactive Resumption Monads.\nThese monads can be used to construct structures such as coroutines and iteratees.";
        buildType = "Simple";
      };
      components = {
        monad-resumption = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }