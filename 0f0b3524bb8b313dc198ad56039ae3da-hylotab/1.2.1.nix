{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      static = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "hylotab";
          version = "1.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "guillaumh@gmail.com";
        author = "Jan van Eijck, Guillaume Hoffmann";
        homepage = "http://www.glyc.dc.uba.ar/intohylo/hylotab.php";
        url = "";
        synopsis = "Tableau based theorem prover for hybrid logics";
        description = "HyLoTab is a proof-of-concept tableaux prover for\nhybrid logics originally written in 2002 by Jan van Eijck.\nIt is no longer developped, but it is kept compatible\nwith the syntax used in HyLoLib.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hylotab = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.mtl
              hsPkgs.hylolib
            ];
          };
        };
      };
    }