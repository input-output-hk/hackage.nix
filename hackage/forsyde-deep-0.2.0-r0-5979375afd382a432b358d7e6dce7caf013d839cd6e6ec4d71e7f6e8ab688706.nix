{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "forsyde-deep"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2018 ForSyDe Group, KTH/EECS/ES";
      maintainer = "forsyde-dev@eecs.kth.se";
      author = "Alfonso Acosta, Hendrik Woidt";
      homepage = "https://forsyde.github.io/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\nThis library provides ForSyDe's implementation as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <https://forsyde.github.io/>.\nThis library provides the deep implementation of ForSyDe in Haskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.type-level)
          (hsPkgs.parameterized-data)
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.regex-posix)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.random)
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parameterized-data)
            (hsPkgs.type-level)
            (hsPkgs.forsyde-deep)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.syb)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }