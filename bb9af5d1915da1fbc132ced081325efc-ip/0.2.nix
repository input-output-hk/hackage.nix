{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ip";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/ip#readme";
        url = "";
        synopsis = "Library for IP and MAC addresses";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "ip" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.text
          ];
        };
      };
    }