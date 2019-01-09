{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; library = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "madlang"; version = "4.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
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
          (hsPkgs.template-haskell)
          (hsPkgs.MonadRandom)
          (hsPkgs.composition-prelude)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.random-shuffle)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.titlecase)
          (hsPkgs.th-lift-instances)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.zip-archive)
          (hsPkgs.recursion-schemes)
          (hsPkgs.binary)
          ];
        };
      exes = {
        "madlang" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.madlang)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.megaparsec)
            ];
          };
        };
      tests = {
        "madlang-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.madlang)
            (hsPkgs.hspec)
            (hsPkgs.text)
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