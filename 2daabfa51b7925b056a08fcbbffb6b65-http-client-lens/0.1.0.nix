{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "http-client-lens";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Rein Henrichs";
        maintainer = "Rein Henrichs <reinh@gmail.com>";
        author = "Rein Henrichs";
        homepage = "http://github.com/reinh/http-client-lens";
        url = "";
        synopsis = "Optics for http-client";
        description = "Optics for <http://hackage.haskell.org/package/http-client http-client>.";
        buildType = "Simple";
      };
      components = {
        http-client-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.network
          ];
        };
      };
    }