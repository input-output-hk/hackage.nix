{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Chitra";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ckkashyap@gmail.com";
        author = "C.K.Kashyap";
        homepage = "https://github.com/ckkashyap/Chitra";
        url = "";
        synopsis = "A platform independent mechanism to render graphics using vnc.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "Chitra" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.network
            ];
          };
        };
      };
    }