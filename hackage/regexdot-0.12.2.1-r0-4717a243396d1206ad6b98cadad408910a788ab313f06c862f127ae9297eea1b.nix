{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "regexdot"; version = "0.12.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto:regexdot@functionalley.com";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.com/RegExDot/regExDot.html";
      url = "";
      synopsis = "A polymorphic, POSIX, extended regex-engine.";
      description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
          ];
        buildable = true;
        };
      };
    }