{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concraft";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/concraft";
        url = "";
        synopsis = "Morphosyntactic tagging tool based on constrained CRFs";
        description = "A morphosyntactic tagging tool based on constrained conditional\nrandom fields.";
        buildType = "Simple";
      };
      components = {
        concraft = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.vector
            hsPkgs.crf-chain1-constrained
            hsPkgs.monad-ox
            hsPkgs.sgd
          ];
        };
        exes = {
          concraft-guess = {
            depends  = [ hsPkgs.cmdargs ];
          };
        };
      };
    }