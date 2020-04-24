{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "galois-fft"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/galois-fft#readme";
      url = "";
      synopsis = "FFTs over finite fields";
      description = "Finite field polynomial arithmetic based on fast Fourier transforms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
          (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
          (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "fft-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
            (hsPkgs."galois-fft" or ((hsPkgs.pkgs-errors).buildDepError "galois-fft"))
            (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
            (hsPkgs."pairing" or ((hsPkgs.pkgs-errors).buildDepError "pairing"))
            (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fft-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."elliptic-curve" or ((hsPkgs.pkgs-errors).buildDepError "elliptic-curve"))
            (hsPkgs."galois-fft" or ((hsPkgs.pkgs-errors).buildDepError "galois-fft"))
            (hsPkgs."galois-field" or ((hsPkgs.pkgs-errors).buildDepError "galois-field"))
            (hsPkgs."pairing" or ((hsPkgs.pkgs-errors).buildDepError "pairing"))
            (hsPkgs."poly" or ((hsPkgs.pkgs-errors).buildDepError "poly"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }