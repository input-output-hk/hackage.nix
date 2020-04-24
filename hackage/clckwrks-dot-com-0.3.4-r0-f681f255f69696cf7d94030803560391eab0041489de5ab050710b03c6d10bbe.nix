{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { backups = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "clckwrks-dot-com"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "clckwrks.com";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "clckwrks-dot-com-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clckwrks" or ((hsPkgs.pkgs-errors).buildDepError "clckwrks"))
            (hsPkgs."clckwrks-theme-clckwrks" or ((hsPkgs.pkgs-errors).buildDepError "clckwrks-theme-clckwrks"))
            (hsPkgs."clckwrks-plugin-bugs" or ((hsPkgs.pkgs-errors).buildDepError "clckwrks-plugin-bugs"))
            (hsPkgs."clckwrks-plugin-media" or ((hsPkgs.pkgs-errors).buildDepError "clckwrks-plugin-media"))
            (hsPkgs."clckwrks-plugin-page" or ((hsPkgs.pkgs-errors).buildDepError "clckwrks-plugin-page"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
            (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."web-plugins" or ((hsPkgs.pkgs-errors).buildDepError "web-plugins"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsx2hs")))
            ];
          buildable = true;
          };
        "clckwrks-dot-com-backups" = {
          depends = (pkgs.lib).optionals (flags.backups) [
            (hsPkgs."archive" or ((hsPkgs.pkgs-errors).buildDepError "archive"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Extra" or ((hsPkgs.pkgs-errors).buildDepError "Extra"))
            ];
          buildable = if flags.backups then true else false;
          };
        };
      };
    }