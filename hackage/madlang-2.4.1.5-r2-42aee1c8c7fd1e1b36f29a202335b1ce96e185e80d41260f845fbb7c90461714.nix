{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; llvm-fast = false; library = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "madlang"; version = "2.4.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/madlang";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Madlang is a text templating language written in Haskell,\nmeant to explore computational creativity and generative\nliterature.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.optparse-applicative)
          (hsPkgs.template-haskell)
          (hsPkgs.MonadRandom)
          (hsPkgs.composition)
          (hsPkgs.composition-extra)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.random-shuffle)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          ];
        };
      exes = { "madlang" = { depends = [ (hsPkgs.base) (hsPkgs.madlang) ]; }; };
      tests = {
        "madlang-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.madlang)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.hspec-megaparsec)
            ];
          };
        };
      benchmarks = {
        "madlang-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.madlang)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }