{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "DarcsHelpers";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2008 Thomas Hartman";
        maintainer = "thomashartman1 at gmail dot com";
        author = "Thomas Hartman";
        homepage = "";
        url = "";
        synopsis = "Code used by Patch-Shack that seemed sensible to open for reusability";
        description = "Parse darcs output";
        buildType = "Simple";
      };
      components = {
        "DarcsHelpers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.parsec
            hsPkgs.xml-parsec
            hsPkgs.HaXml
          ];
        };
      };
    }