{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clock-extras";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/clock-extras#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        clock-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.clock
          ];
        };
        tests = {
          clock-extras-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.clock-extras
              hsPkgs.hspec
            ];
          };
        };
      };
    }