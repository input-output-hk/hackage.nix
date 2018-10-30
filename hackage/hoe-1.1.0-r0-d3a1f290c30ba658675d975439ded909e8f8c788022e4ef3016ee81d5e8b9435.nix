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
        name = "hoe";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015, Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/hoe";
      url = "";
      synopsis = "hoe: Haskell One-liner Evaluator";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hint)
            (hsPkgs.mtl)
            (hsPkgs.optparse-declarative)
            (hsPkgs.regex-posix)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }