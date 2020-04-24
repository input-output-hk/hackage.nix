{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sscan"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2017 Sean Whitton";
      maintainer = "spwhitton@spwhitton.name";
      author = "Sean Whitton";
      homepage = "";
      url = "";
      synopsis = "text UI for scanning with SANE";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sscan" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }