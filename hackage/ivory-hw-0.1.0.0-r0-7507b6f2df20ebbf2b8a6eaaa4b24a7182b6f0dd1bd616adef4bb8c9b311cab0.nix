{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ivory-hw"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "jamesjb@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory hardware model (STM32F4).";
      description = "Hardware model for Ivory.  Currently, the STM32F4 is supported; others may be added.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ivory" or ((hsPkgs.pkgs-errors).buildDepError "ivory"))
          (hsPkgs."ivory-bitdata" or ((hsPkgs.pkgs-errors).buildDepError "ivory-bitdata"))
          (hsPkgs."ivory-backend-c" or ((hsPkgs.pkgs-errors).buildDepError "ivory-backend-c"))
          ];
        buildable = true;
        };
      };
    }