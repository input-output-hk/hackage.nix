{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "heap";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stephan[dot]friedrichs[at]tu-bs[dot]de";
        author = "Stephan Friedrichs";
        homepage = "";
        url = "";
        synopsis = "Heaps in Haskell";
        description = "A flexible Haskell heap implementation";
        buildType = "Custom";
      };
      components = {
        heap = {
          depends  = [ hsPkgs.base ];
        };
      };
    }