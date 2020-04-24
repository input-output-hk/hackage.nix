{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "streamly-bytestring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Sibi Prabakaran";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/streamly-bytestring#readme";
      url = "";
      synopsis = "Library for streamly and bytestring interoperation.";
      description = "Please see the README on GitHub at <https://github.com/psibi/streamly-bytestring#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
          ];
        buildable = true;
        };
      tests = {
        "sb-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streamly-bytestring"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "sb-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."streamly" or ((hsPkgs.pkgs-errors).buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streamly-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }