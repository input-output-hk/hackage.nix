{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "validity-aeson"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for aeson";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-text" or ((hsPkgs.pkgs-errors).buildDepError "validity-text"))
          (hsPkgs."validity-unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "validity-unordered-containers"))
          (hsPkgs."validity-vector" or ((hsPkgs.pkgs-errors).buildDepError "validity-vector"))
          (hsPkgs."validity-scientific" or ((hsPkgs.pkgs-errors).buildDepError "validity-scientific"))
          ];
        buildable = true;
        };
      };
    }