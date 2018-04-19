{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ebeats";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Time in ebeats";
        description = "Time in ebeats. See <http://ebeats.org/>.";
        buildType = "Simple";
      };
      components = {
        ebeats = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }