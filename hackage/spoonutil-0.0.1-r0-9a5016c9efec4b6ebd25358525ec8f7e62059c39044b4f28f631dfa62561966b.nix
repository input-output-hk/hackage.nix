{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "spoonutil"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Morrice";
      author = "John Morrice";
      homepage = "http://github.com/elginer/SpoonUtilities";
      url = "";
      synopsis = "Spoon's utilities.  Simple testing and nice looking error reporting.";
      description = "Spoon's utilities.  Simple testing and nice looking error reporting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          ];
        buildable = true;
        };
      exes = { "test" = { buildable = true; }; };
      };
    }