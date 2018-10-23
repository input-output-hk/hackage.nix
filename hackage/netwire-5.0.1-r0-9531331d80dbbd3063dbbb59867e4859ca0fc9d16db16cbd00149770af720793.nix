{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      testprogram = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "netwire";
        version = "5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <ertesx@gmx.de>";
      author = "Ertugrul Söylemez <ertesx@gmx.de>";
      homepage = "http://hub.darcs.net/ertes/netwire";
      url = "";
      synopsis = "Functional reactive programming library";
      description = "This library provides interfaces for and implements wire arrows\nuseful both for functional reactive programming (FRP) and locally\nstateful programming (LSP).";
      buildType = "Simple";
    };
    components = {
      "netwire" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.time)
        ];
      };
      exes = {
        "netwire-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.netwire)
          ];
        };
      };
    };
  }