{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HAppS-Util";
          version = "0.9.2.1";
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
        "HAppS-Util" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.hslogger
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.process
            hsPkgs.directory
          ];
        };
      };
    }