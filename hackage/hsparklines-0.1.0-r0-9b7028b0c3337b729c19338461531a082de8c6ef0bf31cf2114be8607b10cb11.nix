{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hsparklines"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<hitesh.jasani@gmail.com>";
      author = "Hitesh Jasani";
      homepage = "http://www.jasani.org/search/label/hsparklines";
      url = "";
      synopsis = "Sparklines for Haskell";
      description = "Sparklines implementation of smooth and bar graphs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."gd" or ((hsPkgs.pkgs-errors).buildDepError "gd"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          ];
        buildable = true;
        };
      };
    }