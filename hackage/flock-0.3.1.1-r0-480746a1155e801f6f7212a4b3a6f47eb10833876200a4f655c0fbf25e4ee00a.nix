{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "flock"; version = "0.3.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2007";
      maintainer = "Erik Hesselink <hesselink@gmail.com>";
      author = "Ian Lynagh";
      homepage = "http://github.com/hesselink/flock";
      url = "";
      synopsis = "Wrapper for flock(2)";
      description = "Simple wrapper around flock(2).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }