{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "multimap";
          version = "1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "http://hub.darcs.net/scravy/multimap";
        url = "";
        synopsis = "A multimap.";
        description = "This is a simple implementation of a multimap, based on \"Data.Map\".\n\n[@v1.1@] @!@ had its arguments flipped. Fixed.\nAlso added @fromMap@.";
        buildType = "Simple";
      };
      components = {
        "multimap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }