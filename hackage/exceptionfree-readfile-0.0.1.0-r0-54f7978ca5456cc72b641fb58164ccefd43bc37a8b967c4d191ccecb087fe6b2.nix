{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "exceptionfree-readfile"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 vados";
      maintainer = "vados@vadosware.io";
      author = "vados";
      homepage = "https://gitlab.com/mrman/haskell-exceptionfree-readfile#readme";
      url = "";
      synopsis = "An exception-free readFile for use with '+RTS -xc -RTS' projects";
      description = "Please see the README on Gitlab at <https://gitlab.com/mrman/haskell-exceptionfree-readfile#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."exceptionfree-readfile" or ((hsPkgs.pkgs-errors).buildDepError "exceptionfree-readfile"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            ];
          buildable = true;
          };
        "e2e" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."exceptionfree-readfile" or ((hsPkgs.pkgs-errors).buildDepError "exceptionfree-readfile"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."exceptionfree-readfile" or ((hsPkgs.pkgs-errors).buildDepError "exceptionfree-readfile"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }