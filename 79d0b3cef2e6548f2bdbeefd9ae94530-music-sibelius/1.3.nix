{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "music-sibelius";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "To be written.";
        description = "To be written.";
        buildType = "Simple";
      };
      components = {
        "music-sibelius" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.music-preludes
            hsPkgs.aeson
          ];
        };
      };
    }