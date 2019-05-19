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
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.parameterized-data or (pkgs.buildPackages.parameterized-data))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.regex-posix or (pkgs.buildPackages.regex-posix))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl))
        (hsPkgs.buildPackages.syb or (pkgs.buildPackages.syb))
        (hsPkgs.buildPackages.pretty or (pkgs.buildPackages.pretty))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.random or (pkgs.buildPackages.random))
        (hsPkgs.buildPackages.type-level or (pkgs.buildPackages.type-level))
        (hsPkgs.buildPackages.HUnit or (pkgs.buildPackages.HUnit))
        (hsPkgs.buildPackages.QuickCheck or (pkgs.buildPackages.QuickCheck))
        ];
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