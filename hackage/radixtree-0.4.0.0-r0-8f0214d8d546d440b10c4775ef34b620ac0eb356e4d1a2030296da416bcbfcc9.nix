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
        name = "radixtree";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Mike Ledger";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger";
      homepage = "https://gitlab.com/transportengineering/radixtree";
      url = "";
      synopsis = "";
      description = "A prefix-tree parsing library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.microlens)
          (hsPkgs.parsers)
          (hsPkgs.store)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "radixtree-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.radixtree)
            (hsPkgs.attoparsec)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "radixtree-parsing" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.radixtree)
            (hsPkgs.text)
            (hsPkgs.QuasiText)
            (hsPkgs.criterion)
            (hsPkgs.attoparsec)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
          ];
        };
        "radixtree-search" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.radixtree)
            (hsPkgs.text)
            (hsPkgs.QuasiText)
            (hsPkgs.criterion)
            (hsPkgs.attoparsec)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }