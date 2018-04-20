{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "path";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 FP Complete";
        maintainer = "chrisdone@fpcomplete.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Path";
        description = "Path";
        buildType = "Simple";
      };
      components = {
        path = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.template-haskell
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.path
            ];
          };
        };
      };
    }