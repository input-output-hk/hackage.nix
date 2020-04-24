{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "uuid-quasi"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Lars Petersen";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "http://github.com/lpeterse/uuid-quasi";
      url = "";
      synopsis = "Supplemental package for 'uuid' allowing quasiquotation.";
      description = "This library is allows quasiquotation (expressions and patterns) of 'UUID's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }