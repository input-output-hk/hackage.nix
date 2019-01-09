{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "redis-resp"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "(C) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>, Roman S. Borschel <roman@pkaboo.org>";
      author = "Toralf Wittner";
      homepage = "https://gitlab.com/twittner/redis-resp/";
      url = "";
      synopsis = "REdis Serialization Protocol (RESP) implementation.";
      description = "REdis Serialization Protocol (RESP) implementation as specified\nin <http://redis.io/topics/protocol>.\n\nMost Redis commands are declared as a GADT which\nenables different interpretations such as\n<http://hackage.haskell.org/package/redis-io redis-io>.";
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