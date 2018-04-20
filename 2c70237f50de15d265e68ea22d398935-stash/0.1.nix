{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stash";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "To be written";
        description = "To be written.";
        buildType = "Simple";
      };
      components = {
        stash = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.vector
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.attoparsec
          ];
        };
      };
    }