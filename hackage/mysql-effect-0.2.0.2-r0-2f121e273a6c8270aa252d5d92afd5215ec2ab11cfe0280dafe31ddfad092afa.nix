{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-effect"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/mysql-effect";
      url = "";
      synopsis = "An extensible mysql effect using extensible-effects and mysql-simple";
      description = "Any help (especially documentation) is very welcome,";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."extensible-effects" or ((hsPkgs.pkgs-errors).buildDepError "extensible-effects"))
          (hsPkgs."mysql-simple" or ((hsPkgs.pkgs-errors).buildDepError "mysql-simple"))
          (hsPkgs."mysql" or ((hsPkgs.pkgs-errors).buildDepError "mysql"))
          ];
        buildable = true;
        };
      };
    }