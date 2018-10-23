{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { colors = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty";
        version = "0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "See <http://documentup.com/feuerbach/tasty>";
      buildType = "Simple";
    };
    components = {
      "tasty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.regex-posix)
          (hsPkgs.optparse-applicative)
        ] ++ pkgs.lib.optional (flags.colors) (hsPkgs.ansi-terminal);
      };
    };
  }