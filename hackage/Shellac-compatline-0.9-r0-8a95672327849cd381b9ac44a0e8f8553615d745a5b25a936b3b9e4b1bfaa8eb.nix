{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { useeditline = true; usereadline = false; };
    package = {
      specVersion = "1.2.2";
      identifier = { name = "Shellac-compatline"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://www.cs.princeton.edu/~rdockins/shellac/home/";
      url = "";
      synopsis = "\"compatline\" backend module for Shellac";
      description = "This package provides a Shellac backend which acts a thin interface\nfor the Shellac-readline or Shellac-editline packages, depending\non avaliability.  Note that this package may be compiled against\nreadline, which is licended under the GPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."Shellac" or ((hsPkgs.pkgs-errors).buildDepError "Shellac"))
          ] ++ (pkgs.lib).optional (flags.useeditline) (hsPkgs."Shellac-editline" or ((hsPkgs.pkgs-errors).buildDepError "Shellac-editline"))) ++ (pkgs.lib).optional (!flags.useeditline && flags.usereadline) (hsPkgs."Shellac-readline" or ((hsPkgs.pkgs-errors).buildDepError "Shellac-readline"))) ++ (pkgs.lib).optional (!flags.useeditline && !flags.usereadline) (hsPkgs."DependencyResolutionFailure" or ((hsPkgs.pkgs-errors).buildDepError "DependencyResolutionFailure"));
        buildable = true;
        };
      };
    }