{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "autonix-deps-kf5";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Thomas Tuegel";
        maintainer = "ttuegel@gmail.com";
        author = "Thomas Tuegel";
        homepage = "";
        url = "";
        synopsis = "Generate dependencies for KDE 5 Nix expressions";
        description = "@autonix-deps-kf5@ automatically detects dependencies for KDE Frameworks 5\nand related software collections. The generated dependencies are used to\nautomatically create expressions for use by the Nix package manager.";
        buildType = "Simple";
      };
      components = {
        autonix-deps-kf5 = {
          depends  = [
            hsPkgs.autonix-deps
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        exes = {
          kf5-deps = {
            depends  = [
              hsPkgs.autonix-deps
              hsPkgs.autonix-deps-kf5
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.lens
              hsPkgs.mtl
            ];
          };
        };
      };
    }