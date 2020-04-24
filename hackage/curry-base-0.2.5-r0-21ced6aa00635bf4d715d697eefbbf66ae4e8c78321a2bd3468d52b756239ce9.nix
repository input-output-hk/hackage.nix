{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "curry-base"; version = "0.2.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Holger Siegel";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Functions for manipulating Curry programs";
      description = "This package serves as a foundation for Curry compilers. it defines the intermediate\nformats FlatCurry and ExtendedFlat. Additionally, it provides functionality\nfor the smooth integration of compiler frontends and backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }