{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "fast-combinatorics"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com//fast-combinatorics#readme";
      url = "";
      synopsis = "Fast combinatorics.";
      description = "Fast combinatorics code with a high level of safety guaranteed by writing it in ATS.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client or ((hsPkgs.pkgs-errors).buildToolDepError "http-client")))
        (hsPkgs.buildPackages.http-client-tls or (pkgs.buildPackages.http-client-tls or ((hsPkgs.pkgs-errors).buildToolDepError "http-client-tls")))
        (hsPkgs.buildPackages.tar or (pkgs.buildPackages.tar or ((hsPkgs.pkgs-errors).buildToolDepError "tar")))
        (hsPkgs.buildPackages.zlib or (pkgs.buildPackages.zlib or ((hsPkgs.pkgs-errors).buildToolDepError "zlib")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."composition-prelude" or ((hsPkgs.pkgs-errors).buildDepError "composition-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "fast-combinatorics-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fast-combinatorics" or ((hsPkgs.pkgs-errors).buildDepError "fast-combinatorics"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fast-combinatorics-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fast-combinatorics" or ((hsPkgs.pkgs-errors).buildDepError "fast-combinatorics"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }