{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "qux";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "public@hjwylde.com";
        author = "Henry J. Wylde";
        homepage = "https://github.com/qux-lang/qux";
        url = "";
        synopsis = "Command line binary for working with the Qux language";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          qux = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-qux
              hsPkgs.mtl
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }