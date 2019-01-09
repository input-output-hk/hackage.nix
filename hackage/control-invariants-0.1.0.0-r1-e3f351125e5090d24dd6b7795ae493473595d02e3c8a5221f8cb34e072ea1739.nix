{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "control-invariants"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon.hudon@gmail.com";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Invariants and contract monitoring";
      description = "Invariants and contract monitoring";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs."assert")
          (hsPkgs.either)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.th-printf)
          (hsPkgs.QuickCheck)
          ];
        };
      };
    }