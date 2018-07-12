{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tart";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Jonathan Daugherty";
        maintainer = "cygnus@foobox.com";
        author = "Jonathan Daugherty";
        homepage = "https://github.com/jtdaugherty/tart/";
        url = "";
        synopsis = "Terminal Art";
        description = "A program to make ASCII art";
        buildType = "Simple";
      };
      components = {
        "tart" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.vty
            hsPkgs.microlens-platform
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.binary
          ];
        };
        exes = {
          "tart" = {
            depends  = [
              hsPkgs.base
              hsPkgs.brick
              hsPkgs.vty
              hsPkgs.vector
              hsPkgs.microlens-platform
              hsPkgs.microlens-th
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.text-zipper
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.tart
              hsPkgs.text-zipper
            ];
          };
        };
      };
    }