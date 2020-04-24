{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "validity-aeson"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for aeson";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-scientific" or ((hsPkgs.pkgs-errors).buildDepError "validity-scientific"))
          (hsPkgs."validity-text" or ((hsPkgs.pkgs-errors).buildDepError "validity-text"))
          (hsPkgs."validity-unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "validity-unordered-containers"))
          (hsPkgs."validity-vector" or ((hsPkgs.pkgs-errors).buildDepError "validity-vector"))
          ];
        buildable = true;
        };
      };
    }