{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kdesrc-build-extra"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ivan.cukic@kde.org";
      author = "Ivan Čukić";
      homepage = "";
      url = "";
      synopsis = "Build profiles for kdesrc-build";
      description = "A tool that allows defining build profiles on top of the kdesrc-build system for building KDE packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "kdesrc-build-extra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      };
    }