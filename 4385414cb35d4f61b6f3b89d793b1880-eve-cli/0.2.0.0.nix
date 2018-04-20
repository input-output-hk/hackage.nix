{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eve-cli";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/eve-cli#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/ChrisPenner/eve-cli#readme>";
        buildType = "Simple";
      };
      components = {
        eve-cli = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.eve
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.vty
          ];
        };
        exes = {
          eve-cli-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.eve
              hsPkgs.eve-cli
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.vty
            ];
          };
        };
        tests = {
          eve-cli-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.eve
              hsPkgs.eve-cli
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.vty
            ];
          };
        };
      };
    }