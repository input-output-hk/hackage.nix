{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "invertible-hlist";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "dylan@dylex.net";
        author = "Dylan Simon";
        homepage = "";
        url = "";
        synopsis = "invertible functions and instances for HList";
        description = "Provides invertible functions and instances for HList. This was formerly part of invertible itself and has been split off.";
        buildType = "Simple";
      };
      components = {
        "invertible-hlist" = {
          depends  = [
            hsPkgs.base
            hsPkgs.invertible
            hsPkgs.HList
          ];
        };
      };
    }