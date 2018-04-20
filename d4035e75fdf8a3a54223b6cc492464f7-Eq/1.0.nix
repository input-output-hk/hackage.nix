{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      testproject = false;
      staticlinking = false;
      optimize = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "Eq";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vincent Berthoux <vincent.berthoux@gmail.com>";
        author = "Vincent Berthoux";
        homepage = "";
        url = "";
        synopsis = "Render math formula in ASCII, and perform some simplifications";
        description = "Haskell formula manipulation program";
        buildType = "Simple";
      };
      components = {
        exes = {
          eq = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.HaXml
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.filepath
            ];
          };
        };
      };
    }