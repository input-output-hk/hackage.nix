{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "old-time";
          version = "1.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Time library";
        description = "This package provides the old time library.\n\nFor new projects, the newer\n<http://hackage.haskell.org/package/time time library>\nis recommended.";
        buildType = "Configure";
      };
      components = {
        old-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
          ];
        };
      };
    }