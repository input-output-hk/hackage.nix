{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "entangle";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "leonardo.taglialegne@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "An application (and library) to convert quipper circuits into Qpmc models.";
        description = "";
        buildType = "Simple";
      };
      components = {
        entangle = {
          depends  = [
            hsPkgs.base
            hsPkgs.quipper-core
            hsPkgs.containers
            hsPkgs.matrix
            hsPkgs.mtl
          ];
        };
        exes = {
          entangle = {
            depends  = [
              hsPkgs.base
              hsPkgs.entangle
              hsPkgs.quipper-core
              hsPkgs.matrix
            ];
          };
        };
      };
    }