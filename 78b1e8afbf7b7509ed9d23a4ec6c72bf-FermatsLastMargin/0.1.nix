{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "FermatsLastMargin";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Shae Erisson <shae@ScannedInAvian.com>";
        author = "Shae Erisson";
        homepage = "http://www.scannedinavian.com/";
        url = "";
        synopsis = "Annotate ps and pdf documents";
        description = "Distributed annotation for PostScript and PDF documents.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "flm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.template-haskell
              hsPkgs.syb-with-class
              hsPkgs.HaXml
              hsPkgs.HAppS-Data
              hsPkgs.HAppS-State
              hsPkgs.HAppS-Server
              hsPkgs.haskell98
              hsPkgs.HAppS-IxSet
              hsPkgs.HAppS-Util
            ];
          };
        };
      };
    }