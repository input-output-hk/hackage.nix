{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "linnet-aeson"; version = "0.3.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Sergey Kolbasov";
      maintainer = "whoisliar@gmail.com";
      author = "Sergey Kolbasov";
      homepage = "https://github.com/haskell-linnet/linnet-aeson#readme";
      url = "";
      synopsis = "Aeson JSON support for Linnet";
      description = "Please see the documentation at <http://linnet.io>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."linnet" or ((hsPkgs.pkgs-errors).buildDepError "linnet"))
          ];
        buildable = true;
        };
      tests = {
        "linnet-aeson-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."linnet" or ((hsPkgs.pkgs-errors).buildDepError "linnet"))
            (hsPkgs."linnet-aeson" or ((hsPkgs.pkgs-errors).buildDepError "linnet-aeson"))
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }