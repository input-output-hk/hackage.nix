{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "huck";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Tim McGilchrist";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
      author = "Tim McGilchrist <timmcgil@gmail.com>";
      homepage = "https://github.com/tmcgilchrist/huck";
      url = "";
      synopsis = "huck";
      description = "A Haskell TOML parsing library.\n\n'Cause just like in the classic mis-adventure, Tom doesn't really pull his weight.\nSo Huck is gathering all the toml parsers and making them betterer.";
      buildType = "Simple";
    };
    components = {
      "huck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.megaparsec)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.unordered-containers)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            (hsPkgs.hedgehog)
            (hsPkgs.time)
          ];
        };
        "test-io" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.text)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }