{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constrained-dynamic";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kindlangdev@googlemail.com";
        author = "Julian Hall";
        homepage = "";
        url = "";
        synopsis = "Dynamic typing with retained constraints";
        description = "Like Data.Dynamic, but extended to allow the specification\nof arbitrary constraints using ConstraintKinds.";
        buildType = "Simple";
      };
      components = {
        constrained-dynamic = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          constrained-dynamic-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.constrained-dynamic
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }