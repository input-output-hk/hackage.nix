{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { colors = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty";
        version = "0.7";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.regex-tdfa)
          (hsPkgs.optparse-applicative)
          (hsPkgs.deepseq)
          (hsPkgs.either)
        ] ++ pkgs.lib.optional (flags.colors) (hsPkgs.ansi-terminal);
      };
    };
  }