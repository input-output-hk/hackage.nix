{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strio";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yone.info@gmail.com";
        author = "Ryo Yoneyama";
        homepage = "https://github.com/yulii/strio";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        strio = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          new-template-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.strio
            ];
          };
        };
        tests = {
          new-template-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.strio
            ];
          };
        };
      };
    }