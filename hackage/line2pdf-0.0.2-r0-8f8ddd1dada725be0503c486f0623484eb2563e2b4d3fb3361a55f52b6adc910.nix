{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "line2pdf"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Simple command-line utility to convert text into PDF";
      description = "Simple command-line utility to convert text into PDF";
      buildType = "Simple";
      };
    components = {
      exes = {
        "line2pdf" = {
          depends = if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = true;
          };
        };
      };
    }