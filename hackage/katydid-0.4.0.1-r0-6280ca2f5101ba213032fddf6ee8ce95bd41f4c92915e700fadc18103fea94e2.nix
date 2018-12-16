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
        name = "katydid";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Walter Schulze";
      maintainer = "awalterschulze@gmail.com";
      author = "Walter Schulze";
      homepage = "https://github.com/katydid/katydid-haskell#readme";
      url = "";
      synopsis = "A haskell implementation of Katydid";
      description = "Please see the README on GitHub at <https://github.com/katydid/katydid-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.extra)
          (hsPkgs.hxt)
          (hsPkgs.ilist)
          (hsPkgs.json)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.regex-tdfa)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "katydid-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.extra)
            (hsPkgs.hxt)
            (hsPkgs.ilist)
            (hsPkgs.json)
            (hsPkgs.katydid)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "katydid-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.hxt)
            (hsPkgs.ilist)
            (hsPkgs.json)
            (hsPkgs.katydid)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.primes)
            (hsPkgs.regex-tdfa)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "katydid-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.hxt)
            (hsPkgs.ilist)
            (hsPkgs.json)
            (hsPkgs.katydid)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }