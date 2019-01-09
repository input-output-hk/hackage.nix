{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mediabus-fdk-aac"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016, 2017 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/lindenbaum/mediabus-fdk-aac";
      url = "";
      synopsis = "Mediabus plugin for the Frauenhofer ISO-14496-3 AAC FDK";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.inline-c)
          (hsPkgs.lens)
          (hsPkgs.mediabus)
          (hsPkgs.monad-logger)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.spool)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        libs = [ (pkgs."m") ];
        pkgconfig = [ (pkgconfPkgs.fdk-aac) ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.mediabus-fdk-aac)
            (hsPkgs.mediabus)
            (hsPkgs.conduit)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "encoder-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.criterion)
            (hsPkgs.mediabus-fdk-aac)
            (hsPkgs.mediabus)
            (hsPkgs.conduit)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }