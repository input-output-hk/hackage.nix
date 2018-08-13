{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vgrep";
        version = "0.1.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Franz Thoma";
      maintainer = "franz.thoma@tngtech.com";
      author = "Franz Thoma";
      homepage = "http://github.com/fmthoma/vgrep#readme";
      url = "";
      synopsis = "A pager for grep";
      description = "@vgrep@ is a pager for navigating through @grep@ output.\n\nUsage:\n\n> grep -rn foo | vgrep\n> vgrep foo /some/path\n> vgrep foo /some/path | vgrep bar\n\n<<https://raw.githubusercontent.com/fmthoma/vgrep/master/vgrep.png>>";
      buildType = "Simple";
    };
    components = {
      "vgrep" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.vty)
        ];
      };
      exes = {
        "vgrep" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.cabal-file-th)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.vgrep)
            (hsPkgs.vty)
          ];
        };
      };
      tests = {
        "vgrep-test" = {
          depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }