{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "free-vl";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Author Here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "http://github.com/githubuser/free-vl#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        free-vl = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.free-vl
            ];
          };
        };
        tests = {
          free-vl-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.free-vl
            ];
          };
        };
      };
    }