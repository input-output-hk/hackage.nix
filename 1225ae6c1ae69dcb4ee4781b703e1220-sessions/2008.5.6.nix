{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sessions";
          version = "2008.5.6";
        };
        license = "LicenseRef-GPL";
        copyright = "Matthew Sackman";
        maintainer = "matthew@wellquite.org";
        author = "Matthew Sackman";
        homepage = "http://www.wellquite.org/sessions/";
        url = "";
        synopsis = "Session Types for Haskell";
        description = "Session Types for Haskell. Allows the specification of communication\nprotocols and then validation that an implementation does not\nviolate said protocol.\nIgnore the build failure for hackage - it's just haddock being\nrubbish.";
        buildType = "Simple";
      };
      components = {
        "sessions" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }