{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "redis-resp";
        version = "0.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/redis-resp/";
      url = "";
      synopsis = "REdis Serialization Protocol (RESP) implementation.";
      description = "REdis Serialization Protocol (RESP) implementation as specified\nin <http://redis.io/topics/protocol>.\n\nAdditionally most Redis commands are declared as an GADT which\nenables different interpretations such as\n<http://hackage.haskell.org/package/redis-io redis-io>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-conversion)
          (hsPkgs.containers)
          (hsPkgs.double-conversion)
          (hsPkgs.dlist)
          (hsPkgs.operational)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.transformers)
        ];
      };
    };
  }