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
        name = "madlang";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/madlang#readme";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "madlang" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.optparse-generic)
          (hsPkgs.mwc-random)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
        ];
      };
      exes = {
        "madlang" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.madlang)
          ];
        };
      };
      tests = {
        "madlang-test" = {
          depends  = [
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
    };
  }