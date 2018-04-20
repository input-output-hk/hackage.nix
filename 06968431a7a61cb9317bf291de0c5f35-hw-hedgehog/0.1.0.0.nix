{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-hedgehog";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/hw-hedgehog#readme";
        url = "";
        synopsis = "Extra hedgehog functionality";
        description = "Extra hedgehog functionality";
        buildType = "Simple";
      };
      components = {
        hw-hedgehog = {
          depends  = [
            hsPkgs.base
            hsPkgs.hedgehog
            hsPkgs.vector
          ];
        };
        tests = {
          hw-hedgehog-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hw-hedgehog
            ];
          };
        };
      };
    }