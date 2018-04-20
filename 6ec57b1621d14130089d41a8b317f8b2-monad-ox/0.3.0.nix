{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-ox";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/monad-ox";
        url = "";
        synopsis = "Monad for observation extraction";
        description = "The library provides an Ox monad and accompanying functions which\nare intended to simplify writing functional expressions over input\nsentence with arbitrary type of token.  Values of such functional\nexpressions can be subsequently used as observations in input data\nfor sequential classifiers.";
        buildType = "Simple";
      };
      components = {
        monad-ox = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
      };
    }