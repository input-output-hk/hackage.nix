{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-scoped-session";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Justus Adam";
        maintainer = "dev@justus.science";
        author = "JustusAdam";
        homepage = "https://github.com/JustusAdam/snaplet-scoped-session#readme";
        url = "";
        synopsis = "Modularised session state for Snaplets, in a Snaplet";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "snaplet-scoped-session" = {
          depends  = [
            hsPkgs.base
            hsPkgs.snap
            hsPkgs.classy-prelude
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.async
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.configurator
          ];
        };
      };
    }