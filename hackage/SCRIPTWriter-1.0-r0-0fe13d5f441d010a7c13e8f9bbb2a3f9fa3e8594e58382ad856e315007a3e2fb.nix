{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SCRIPTWriter"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Rick Klomp";
      maintainer = "r.klomp@cs.stir.ac.uk";
      author = "Rick Klomp";
      homepage = "https://github.com/RKlompUU/SCRIPTWriter";
      url = "";
      synopsis = "ESCRIPT: a human friendly language for programming Bitcoin scripts";
      description = "Please see the README on Github at https://github.com/RKlompUU/SCRIPTWriter";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."uu-tc" or ((hsPkgs.pkgs-errors).buildDepError "uu-tc"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bitcoin-script" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-script"))
          (hsPkgs."bitcoin-hs" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-hs"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "SCRIPTWriter-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SCRIPTWriter" or ((hsPkgs.pkgs-errors).buildDepError "SCRIPTWriter"))
            ];
          buildable = true;
          };
        };
      };
    }