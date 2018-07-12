{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kqueue";
          version = "0.1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hesselink@gmail.com";
        author = "Erik Hesselink";
        homepage = "http://github.com/hesselink/kqueue";
        url = "";
        synopsis = "A binding to the kqueue event library.";
        description = "A low-level binding to the kqueue library as\nfound in BSD and Mac OS X. It provides, among\nother things, a way of monitoring files and\ndirectories for changes.";
        buildType = "Simple";
      };
      components = {
        "kqueue" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.unix
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }