{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "complex-integrate"; version = "1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "hijarian@gmail.com";
      author = "Mark Safronov a.k.a. hijarian";
      homepage = "https://github.com/hijarian/complex-integrate";
      url = "";
      synopsis = "A simple integration function to integrate a complex-valued complex functions";
      description = "Small and simple library for integration of complex functions.\nIntegrates functions along straight lines. Compatible with real-valued functions.\nUses Simpson's method.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }