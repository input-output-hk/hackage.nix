{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ebeats";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>, Tom Murphy <amindfv@gmail.com>";
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