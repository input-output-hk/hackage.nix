{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ispositive";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Christian Dietrich <stettberger@dokucode.de>";
        author = "Christian Dietrich";
        homepage = "";
        url = "";
        synopsis = "Positive integers test.";
        description = "Tests whether a number is a positive integer.";
        buildType = "Simple";
      };
      components = {
        ispositive = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.ispositive
            ];
          };
        };
      };
    }