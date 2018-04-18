{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "camfort";
          version = "0.903";
        };
        license = "Apache-2.0";
        copyright = "2012-2016 University of Cambridge";
        maintainer = "dom.orchard@gmail.com";
        author = "Dominic Orchard, Matthew Danish, Mistral Contrastin, Andrew Rice, Oleg Oshmyan";
        homepage = "https://camfort.github.io";
        url = "";
        synopsis = "CamFort - Cambridge Fortran infrastructure";
        description = "CamFort is a tool for the analysis, transformation, verification of Fortran code.";
        buildType = "Simple";
      };
      components = {
        camfort = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.uniplate
            hsPkgs.syz
            hsPkgs.syb
            hsPkgs.matrix
            hsPkgs.hmatrix
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.array
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.GenericPretty
            hsPkgs.fortran-src
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.fgl
            hsPkgs.binary
            hsPkgs.lattices
            hsPkgs.sbv
            hsPkgs.partial-order
          ];
        };
        exes = {
          camfort = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.containers
              hsPkgs.uniplate
              hsPkgs.syz
              hsPkgs.syb
              hsPkgs.matrix
              hsPkgs.vector
              hsPkgs.hmatrix
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.GenericPretty
              hsPkgs.QuickCheck
              hsPkgs.fortran-src
              hsPkgs.filepath
              hsPkgs.fgl
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.lattices
              hsPkgs.sbv
              hsPkgs.partial-order
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.fortran-src
              hsPkgs.uniplate
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.hmatrix
              hsPkgs.text
              hsPkgs.binary
              hsPkgs.lattices
              hsPkgs.sbv
              hsPkgs.partial-order
              hsPkgs.camfort
            ];
          };
        };
      };
    }