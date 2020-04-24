{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ekg-cloudwatch"; version = "0.0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2016 Seller Labs";
      maintainer = "matt@sellerlabs.com";
      author = "Matt Parsons";
      homepage = "https://github.com/sellerlabs/ekg-cloudwatch#readme";
      url = "";
      synopsis = "An ekg backend for Amazon Cloudwatch";
      description = "Push ekg metrics to Amazon Cloudwatch";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
          (hsPkgs."amazonka-cloudwatch" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-cloudwatch"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "ekg-cloudwatch-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
            (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
            (hsPkgs."amazonka-cloudwatch" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-cloudwatch"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ekg-cloudwatch" or ((hsPkgs.pkgs-errors).buildDepError "ekg-cloudwatch"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }