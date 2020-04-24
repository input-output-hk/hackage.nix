{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "PastePipe"; version = "1.8"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Rogan Creswick";
      homepage = "http://github.com/Fuuzetsu/pastepipe";
      url = "";
      synopsis = "CLI for pasting to lpaste.net";
      description = "PastePipe reads from standard in and posts to <lpaste.net>.\nIt will auto-detect your username, but that can be\noverridden with command line options (--user)\nTitles are set with -t, language with -l.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          ];
        buildable = true;
        };
      exes = {
        "pastepipe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."PastePipe" or ((hsPkgs.pkgs-errors).buildDepError "PastePipe"))
            ];
          buildable = true;
          };
        };
      };
    }