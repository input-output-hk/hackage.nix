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
        name = "tintin";
        version = "1.4.6";
      };
      license = "Apache-2.0";
      copyright = "2018 Theam";
      maintainer = "hackers@theam.io";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/tintin#readme";
      url = "";
      synopsis = "A softer alternative to Haddock";
      description = "Please see the website <https://theam.github.io/tintin>";
      buildType = "Simple";
    };
    components = {
      "tintin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clay)
          (hsPkgs.data-has)
          (hsPkgs.directory)
          (hsPkgs.frontmatter)
          (hsPkgs.inliterate)
          (hsPkgs.lucid)
          (hsPkgs.process)
          (hsPkgs.require)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.universum)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "tintin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-generic)
            (hsPkgs.require)
            (hsPkgs.tintin)
            (hsPkgs.universum)
          ];
        };
      };
      tests = {
        "tintin-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.require)
            (hsPkgs.tintin)
          ];
        };
      };
    };
  }