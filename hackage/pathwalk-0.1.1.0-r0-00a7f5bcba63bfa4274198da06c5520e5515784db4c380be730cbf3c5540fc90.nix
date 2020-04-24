{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pathwalk"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xena@yolo-swag.com";
      author = "Christine Dodrill";
      homepage = "";
      url = "";
      synopsis = "Path walking utilities for Haskell programs";
      description = "Simple directory tree walking utilities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }