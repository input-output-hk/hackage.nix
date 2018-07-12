{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mrm";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, brunosoliveira, scmu, suhorng";
        maintainer = "suhorng@gmail.com";
        author = "brunosoliveira, scmu, suhorng";
        homepage = "https://github.com/scmu/mrm";
        url = "";
        synopsis = "Modular Refiable Matching, first-class matches";
        description = "This package contains an implementation of\nModular Reifiable Matching (MRM), a new approach to two level\ntypes using a fixpoint of list-of-functors representation. MRM\nallows the modular definition of datatypes and functions by\npattern matching, using a style similar to the widely popular\nDatatypes a la Carte (DTC) approach. However, unlike DTC, MRM\nuses a fixpoint of list-of-functors approach to two-level types.\nThis approach has advantages that help with various aspects of\nextensibility, modularity and reuse.\nFor more information, please refer to\n<http://www.iis.sinica.edu.tw/~scm/2015/mrm/>.";
        buildType = "Simple";
      };
      components = {
        "mrm" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }