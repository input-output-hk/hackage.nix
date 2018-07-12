{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "learn";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aqo2@columbia.edu";
        author = "Augustus Odena";
        homepage = "";
        url = "";
        synopsis = "Learning Algorithms";
        description = "Learning Algorithms";
        buildType = "Simple";
      };
      components = {
        "learn" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }