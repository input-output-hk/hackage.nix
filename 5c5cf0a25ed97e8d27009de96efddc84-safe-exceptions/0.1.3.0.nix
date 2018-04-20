{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "safe-exceptions";
          version = "0.1.3.0";
        };
        license = "MIT";
        copyright = "2016 FP Complete";
        maintainer = "michael@fpcomplete.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/safe-exceptions#readme";
        url = "";
        synopsis = "Safe, consistent, and easy exception handling";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        safe-exceptions = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
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