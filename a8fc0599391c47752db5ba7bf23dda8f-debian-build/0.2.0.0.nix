{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "debian-build";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://twitter.com/khibino/";
        url = "";
        synopsis = "Debian package build sequence tools";
        description = "This package provides functions to build\ndebian package from source tree.";
        buildType = "Simple";
      };
      components = {
        "debian-build" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.Cabal
          ];
        };
        exes = {
          "odebuild" = {
            depends  = [
              hsPkgs.base
              hsPkgs.debian-build
            ];
          };
        };
      };
    }