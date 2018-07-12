{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hedis-namespace";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/hedis-namespace#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hedis-namespace" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hedis
            hsPkgs.mtl
          ];
        };
        exes = {
          "hedis-namespace-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedis-namespace
              hsPkgs.bytestring
              hsPkgs.hedis
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          "hedis-namespace-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedis-namespace
            ];
          };
        };
      };
    }