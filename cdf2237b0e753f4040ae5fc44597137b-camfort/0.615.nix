{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "camfort";
          version = "0.615";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2016 University of Cambridge";
        maintainer = "dom.orchard@gmail.com";
        author = "Dominic Orchard, Matthew Danish, Mistral Contrastin, Andrew Rice, Oleg Oshmyan";
        homepage = "";
        url = "";
        synopsis = "CamFort - Cambridge Fortran infrastructure";
        description = "CamFort is a tool for the analysis, transformation, and extension of Fortran code base.";
        buildType = "Simple";
      };
      components = {
        camfort = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.generic-deriving
            hsPkgs.uniplate
            hsPkgs.comonad
            hsPkgs.fclabels
            hsPkgs.haskell-src
            hsPkgs.syz
            hsPkgs.syb
            hsPkgs.matrix
            hsPkgs.hmatrix
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.array
            hsPkgs.directory
            hsPkgs.language-fortran
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
      };
    }