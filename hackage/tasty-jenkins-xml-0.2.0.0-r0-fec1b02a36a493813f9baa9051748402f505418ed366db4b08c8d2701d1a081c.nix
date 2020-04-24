{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-jenkins-xml"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Ixperta Solutions s.r.o.";
      maintainer = "ixcom-core@ixperta.com";
      author = "Ixcom Core Team";
      homepage = "https://github.com/IxpertaSolutions/tasty-jenkins-xml#readme";
      url = "";
      synopsis = "Render tasty output to both console and XML for Jenkins";
      description = "An extension of <https://hackage.haskell.org/package/tasty-ant-xml tasty-ant-xml> that is meant to be more practically useful with Jenkins CI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-ant-xml" or ((hsPkgs.pkgs-errors).buildDepError "tasty-ant-xml"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."io-capture" or ((hsPkgs.pkgs-errors).buildDepError "io-capture"))
            (hsPkgs."mockery" or ((hsPkgs.pkgs-errors).buildDepError "mockery"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-jenkins-xml" or ((hsPkgs.pkgs-errors).buildDepError "tasty-jenkins-xml"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }