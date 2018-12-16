{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vgrep";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Franz Thoma";
      maintainer = "franz.thoma@tngtech.com";
      author = "Franz Thoma";
      homepage = "http://github.com/fmthoma/vgrep#readme";
      url = "";
      synopsis = "A pager for grep";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.pipes)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.vty)
        ];
      };
      exes = {
        "vgrep" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.vgrep)
            (hsPkgs.vty)
          ];
        };
      };
      tests = {
        "vgrep-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.vgrep)
          ];
        };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }