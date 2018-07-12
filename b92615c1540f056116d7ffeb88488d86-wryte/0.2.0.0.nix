{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wryte";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Tobias Dammers";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://github.com/tdammers/wryte#readme";
        url = "";
        synopsis = "Pretty output for source generators";
        description = "Wryte provides a convenient API for semi-automatically indented\nsource code output.";
        buildType = "Simple";
      };
      components = {
        "wryte" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        tests = {
          "wryte-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wryte
            ];
          };
        };
      };
    }