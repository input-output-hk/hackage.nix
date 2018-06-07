{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unity-testresult-parser";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 incertia";
        maintainer = "incertia@incertia.net";
        author = "Will Song";
        homepage = "https://github.com/incertia/unity-testresult-parser#readme";
        url = "";
        synopsis = "";
        description = "Unity3D TestResults parser";
        buildType = "Simple";
      };
      components = {
        unity-testresult-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.optparse-applicative
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.xml-conduit
          ];
        };
        exes = {
          unity-testresult-parser = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.base
              hsPkgs.unity-testresult-parser
              hsPkgs.ansi-terminal
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.split
              hsPkgs.text
            ];
          };
        };
      };
    }