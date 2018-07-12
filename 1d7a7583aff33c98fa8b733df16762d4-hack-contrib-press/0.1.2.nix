{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-contrib-press";
          version = "0.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "bickfordb@gmail.com";
        author = "Brandon Bickford <bickfordb@gmail.com>";
        homepage = "http://github.com/bickfordb/hack-contrib-press";
        url = "";
        synopsis = "Hack helper that renders Press templates";
        description = "Hack helper that renders Press templates";
        buildType = "Simple";
      };
      components = {
        "hack-contrib-press" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-class
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.hack
            hsPkgs.parsec
            hsPkgs.press
            hsPkgs.json
          ];
        };
      };
    }