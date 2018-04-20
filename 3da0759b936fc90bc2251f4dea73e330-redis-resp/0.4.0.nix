{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "redis-resp";
          version = "0.4.0";
        };
        license = "MPL-2.0";
        copyright = "(C) 2014 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://gitlab.com/twittner/redis-resp/";
        url = "";
        synopsis = "REdis Serialization Protocol (RESP) implementation.";
        description = "REdis Serialization Protocol (RESP) implementation as specified\nin <http://redis.io/topics/protocol>.\n\nAdditionally most Redis commands are declared as an GADT which\nenables different interpretations such as\n<http://hackage.haskell.org/package/redis-io redis-io>.";
        buildType = "Simple";
      };
      components = {
        redis-resp = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.containers
            hsPkgs.double-conversion
            hsPkgs.dlist
            hsPkgs.operational
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
      };
    }