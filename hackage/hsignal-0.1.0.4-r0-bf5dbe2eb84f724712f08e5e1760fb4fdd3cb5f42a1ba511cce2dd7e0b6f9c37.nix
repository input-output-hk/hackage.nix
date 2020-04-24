{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsignal"; version = "0.1.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Alexander Vivian Hugh McPhail";
      homepage = "http://code.haskell.org/hsignal";
      url = "";
      synopsis = "Signal processing";
      description = "Purely functional interface to signal processing based on hmatrix\nprovides data types for manipulating EEG data,\nincluding reading from BDF";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hstatistics" or ((hsPkgs.pkgs-errors).buildDepError "hstatistics"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."gsl" or ((hsPkgs.pkgs-errors).sysDepError "gsl"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }