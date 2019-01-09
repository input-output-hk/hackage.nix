{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "enumerate-function"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/enumerate-function#readme";
      url = "";
      synopsis = "TODO";
      description = "TODO";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.enumerate)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.MemoTrie)
          (hsPkgs.deepseq)
          ];
        };
      exes = {
        "example-enumerate-function" = {
          depends = [ (hsPkgs.base) (hsPkgs.enumerate-function) ];
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.enumerate-function)
            (hsPkgs.doctest)
            ];
          };
        "unittest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.enumerate-function)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "command" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.enumerate-function)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }