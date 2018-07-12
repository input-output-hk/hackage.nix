{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sixty-five-oh-two";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "2018 Tyler Limkemann";
        maintainer = "tslimkemann42@gmail.com";
        author = "Tyler Limkemann";
        homepage = "https://github.com/aearnus/sixty-five-oh-two#readme";
        url = "";
        synopsis = "An eDSL for writing 65(C)02 bytecode.";
        description = "An eDSL for writing 65(C)02 bytecode. Please see the README on GitHub at <https://github.com/aearnus/sixty-five-oh-two#readme>";
        buildType = "Simple";
      };
      components = {
        "sixty-five-oh-two" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.mtl
          ];
        };
        exes = {
          "sixty-five-oh-two-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.sixty-five-oh-two
            ];
          };
        };
        tests = {
          "sixty-five-oh-two-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.sixty-five-oh-two
            ];
          };
        };
      };
    }