{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      optimize = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monoids";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/monoids";
        url = "";
        synopsis = "Deprecated: Use 'reducers'";
        description = "Deprecated: Use 'reducers'";
        buildType = "Simple";
      };
      components = {
        "monoids" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.fingertree
            hsPkgs.text
            hsPkgs.parallel
          ];
        };
      };
    }