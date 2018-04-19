{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stackage-types";
          version = "1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@fpcomplete.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/stackage-types";
        url = "";
        synopsis = "Shared data types between various Stackage packages";
        description = "For more information, see <https://www.stackage.org/package/stackage-types>";
        buildType = "Simple";
      };
      components = {
        stackage-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.time
            hsPkgs.safe
          ];
        };
      };
    }