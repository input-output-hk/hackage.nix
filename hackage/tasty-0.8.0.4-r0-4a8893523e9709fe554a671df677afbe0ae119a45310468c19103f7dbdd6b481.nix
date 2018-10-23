{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty";
        version = "0.8.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "http://documentup.com/feuerbach/tasty";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "See <http://documentup.com/feuerbach/tasty>";
      buildType = "Simple";
    };
    components = {
      "tasty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.regex-tdfa)
          (hsPkgs.optparse-applicative)
          (hsPkgs.deepseq)
          (hsPkgs.unbounded-delays)
          (hsPkgs.async)
          (hsPkgs.ansi-terminal)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
    };
  }