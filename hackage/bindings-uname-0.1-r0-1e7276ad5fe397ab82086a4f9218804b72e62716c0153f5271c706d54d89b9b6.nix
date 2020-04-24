{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bindings-uname"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro.org>";
      author = "PHO <pho at cielonegro.org>";
      homepage = "";
      url = "";
      synopsis = "Low-level binding to POSIX uname(3)";
      description = "This is a low-level binding to POSIX uname(3)\nfunction. Perhaps it shoule be part of unix package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }