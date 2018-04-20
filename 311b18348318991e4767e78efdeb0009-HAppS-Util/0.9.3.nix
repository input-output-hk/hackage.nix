{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HAppS-Util";
          version = "0.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "2007 HAppS LLC";
        maintainer = "AlexJacobson@HAppS.org";
        author = "HAppS LLC";
        homepage = "";
        url = "";
        synopsis = "Web framework";
        description = "";
        buildType = "Simple";
      };
      components = {
        HAppS-Util = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.hslogger
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.process
            hsPkgs.directory
          ] ++ [ hsPkgs.base ];
        };
      };
    }