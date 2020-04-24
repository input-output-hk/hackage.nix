{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { exe = false; };
    package = {
      specVersion = "1.21";
      identifier = { name = "base-compat-migrate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Adam Bergmark";
      maintainer = "adam@bergmark.nl";
      author = "Adam Bergmark";
      homepage = "https://github.com/bergmark/base-compat-migrate#readme";
      url = "";
      synopsis = "Helps migrating projects to base-compat(-batteries).";
      description = "Temporarily replace your base & base-compat(-batteries) dependencies with base-compat-migrate to verify that you are using all available base-compat modules.\nPlease see the included README or visit <https://github.com/bergmark/base-compat-migrate#readme> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          ];
        buildable = true;
        };
      exes = {
        "base-compat-migrate-generate" = {
          depends = (pkgs.lib).optionals (flags.exe) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            ];
          buildable = if flags.exe then true else false;
          };
        };
      };
    }