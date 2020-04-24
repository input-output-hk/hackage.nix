{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "intervals"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://patch-tag.com/r/ekmett/intervals";
      url = "";
      synopsis = "Interval Arithmetic";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."numeric-extras" or ((hsPkgs.pkgs-errors).buildDepError "numeric-extras"))
          (hsPkgs."rounding" or ((hsPkgs.pkgs-errors).buildDepError "rounding"))
          ];
        buildable = true;
        };
      };
    }