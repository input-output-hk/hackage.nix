{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "uglymemo";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "lennart@augustsson.net";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "A simple (but internally ugly) memoization function.";
        description = "A simple (but internally ugly) memoization function.\n\n* New in 0.1.0.1: Make it exception safe.";
        buildType = "Simple";
      };
      components = {
        uglymemo = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }