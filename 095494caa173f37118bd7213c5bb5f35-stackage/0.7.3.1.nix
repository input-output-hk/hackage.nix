{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stackage";
          version = "0.7.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://www.stackage.org/";
        url = "";
        synopsis = "Dummy package forcing installation of other Stackage packages";
        description = "";
        buildType = "Simple";
      };
      components = {
        "stackage" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stackage-cli
            hsPkgs.stackage-update
            hsPkgs.stackage-upload
            hsPkgs.stackage-install
            hsPkgs.stackage-build-plan
          ];
        };
      };
    }