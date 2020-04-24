{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ft-generator"; version = "1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "janis.voigtlaender@uni-due.de";
      author = "Janis Voigtlaender";
      homepage = "";
      url = "";
      synopsis = "implementation accompanying a WFLP'19 paper";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ft-generator" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }