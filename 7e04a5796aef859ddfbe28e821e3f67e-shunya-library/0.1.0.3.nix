{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "shunya-library";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/shunya-library#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "shunya-library" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "shunya-library-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shunya-library
            ];
          };
        };
      };
    }