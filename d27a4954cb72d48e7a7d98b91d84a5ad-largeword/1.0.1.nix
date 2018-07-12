{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "largeword";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dominic Steinitz <dominic@steinitz.org>";
        maintainer = "Dominic Steinitz <dominic@steinitz.org>";
        author = "Dominic Steinitz <dominic@steinitz.org>";
        homepage = "http://trac.haskell.org/largeword/wiki";
        url = "";
        synopsis = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
        description = "Provides Word128, Word192 and Word256 and a way of producing other large words if required.";
        buildType = "Simple";
      };
      components = {
        "largeword" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }