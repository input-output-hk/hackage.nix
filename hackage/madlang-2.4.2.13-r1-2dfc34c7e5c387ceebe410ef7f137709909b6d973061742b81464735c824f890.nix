{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; llvm-fast = false; library = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "madlang"; version = "2.4.2.13"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/madlang";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Madlang is a text templating language written in Haskell,\nmeant to explore computational creativity and generative\nliterature.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.file-embed or (pkgs.buildPackages.file-embed))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        ];
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
          (hsPkgs.composition-prelude)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.random-shuffle)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.zip-archive)
          (hsPkgs.recursion-schemes)
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