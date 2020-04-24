{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repa-examples"; version = "1.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://trac.haskell.org/repa";
      url = "";
      synopsis = "Examples using the Repa array library.";
      description = "Examples using the Repa array library.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "repa-fft2d" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "repa-algorithms"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            ];
          buildable = true;
          };
        "repa-fft2d-highpass" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "repa-algorithms"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            ];
          buildable = true;
          };
        "repa-laplace" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            ];
          buildable = true;
          };
        "repa-mmult" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dph-prim-par" or ((hsPkgs.pkgs-errors).buildDepError "dph-prim-par"))
            (hsPkgs."dph-base" or ((hsPkgs.pkgs-errors).buildDepError "dph-base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            (hsPkgs."repa-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "repa-algorithms"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }