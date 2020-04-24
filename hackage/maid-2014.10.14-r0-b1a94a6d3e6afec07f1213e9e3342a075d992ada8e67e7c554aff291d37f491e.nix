{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "maid"; version = "2014.10.14"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/maid";
      url = "";
      synopsis = "A simple static web server";
      description = "Serve files from the current path";
      buildType = "Simple";
      };
    components = {
      exes = {
        "maid" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."air" or ((hsPkgs.pkgs-errors).buildDepError "air"))
            (hsPkgs."air-th" or ((hsPkgs.pkgs-errors).buildDepError "air-th"))
            (hsPkgs."hack2" or ((hsPkgs.pkgs-errors).buildDepError "hack2"))
            (hsPkgs."hack2-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack2-contrib"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."hack2-handler-snap-server" or ((hsPkgs.pkgs-errors).buildDepError "hack2-handler-snap-server"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."moe" or ((hsPkgs.pkgs-errors).buildDepError "moe"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }