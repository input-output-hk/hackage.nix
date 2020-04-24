{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "spectral-clustering"; version = "0.2.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2018 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/spectral-clustering#readme";
      url = "";
      synopsis = "Library for spectral clustering.";
      description = "Spectral clustering of a matrix.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clustering" or ((hsPkgs.pkgs-errors).buildDepError "clustering"))
          (hsPkgs."eigen" or ((hsPkgs.pkgs-errors).buildDepError "eigen"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-svdlibc" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-svdlibc"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."sparse-linear-algebra" or ((hsPkgs.pkgs-errors).buildDepError "sparse-linear-algebra"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }