{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dph-prim-par"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
      author = "The DPH Team";
      homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
      url = "";
      synopsis = "Parallel Primitives for Data-Parallel Haskell.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
          (hsPkgs."dph-prim-interface" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-interface"))
          (hsPkgs."dph-prim-seq" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-seq"))
          ];
        buildable = true;
        };
      };
    }