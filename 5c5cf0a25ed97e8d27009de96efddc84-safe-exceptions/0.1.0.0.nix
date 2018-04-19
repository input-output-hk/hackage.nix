{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "safe-exceptions";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 FP Complete";
        maintainer = "michael@fpcomplete.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/githubuser/safe-exceptions#readme";
        url = "";
        synopsis = "Safe, consistent, and easy exception handling";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        safe-exceptions = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.transformers
          ];
        };
        tests = {
          safe-exceptions-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.safe-exceptions
              hsPkgs.void
            ];
          };
        };
      };
    }