{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pasta";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Author Here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "http://github.com/githubuser/pasta#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "pasta" = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.semigroups
            hsPkgs.protolude
          ];
        };
        tests = {
          "pasta-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pasta
              hsPkgs.hspec
              hsPkgs.microlens
              hsPkgs.protolude
            ];
          };
        };
      };
    }