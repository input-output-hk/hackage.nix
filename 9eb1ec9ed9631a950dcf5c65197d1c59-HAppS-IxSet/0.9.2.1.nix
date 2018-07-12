{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HAppS-IxSet";
          version = "0.9.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2007 HAppS LLC";
        maintainer = "AlexJacobson@HAppS.org";
        author = "Alex Jacobson, Einar Karttunen";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Web framework";
        buildType = "Simple";
      };
      components = {
        "HAppS-IxSet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.hslogger
            hsPkgs.HAppS-Util
            hsPkgs.HAppS-State
            hsPkgs.HAppS-Data
            hsPkgs.template-haskell
            hsPkgs.syb-with-class
            hsPkgs.containers
          ];
        };
      };
    }