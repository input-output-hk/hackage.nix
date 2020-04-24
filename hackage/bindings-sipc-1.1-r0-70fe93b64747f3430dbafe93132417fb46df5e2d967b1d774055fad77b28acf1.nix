{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bindings-sipc"; version = "1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "https://github.com/justinethier/hs-bindings-sipc";
      url = "";
      synopsis = "Low level bindings to SIPC.";
      description = "Low level bindings for the SELinux Secure Inter-Process\nCommunications (SIPC) Library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [ (pkgs."sipc" or ((hsPkgs.pkgs-errors).sysDepError "sipc")) ];
        buildable = true;
        };
      exes = {
        "MQCreator" = {
          depends = [
            (hsPkgs."bindings-sipc" or ((hsPkgs.pkgs-errors).buildDepError "bindings-sipc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "MQDestroyer" = {
          depends = [
            (hsPkgs."bindings-sipc" or ((hsPkgs.pkgs-errors).buildDepError "bindings-sipc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "MQReader" = {
          depends = [
            (hsPkgs."bindings-sipc" or ((hsPkgs.pkgs-errors).buildDepError "bindings-sipc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "MQSender" = {
          depends = [
            (hsPkgs."bindings-sipc" or ((hsPkgs.pkgs-errors).buildDepError "bindings-sipc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }