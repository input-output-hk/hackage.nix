{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ls-usb"; version = "0.1.0.12"; };
      license = "BSD-3-Clause";
      copyright = "2009–2012 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "https://github.com/roelvandijk/ls-usb";
      url = "";
      synopsis = "List USB devices";
      description = "A small utility for displaying information about USB devices\nconnected to your system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ls-usb" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."usb" or ((hsPkgs.pkgs-errors).buildDepError "usb"))
            (hsPkgs."usb-id-database" or ((hsPkgs.pkgs-errors).buildDepError "usb-id-database"))
            ];
          buildable = true;
          };
        };
      };
    }