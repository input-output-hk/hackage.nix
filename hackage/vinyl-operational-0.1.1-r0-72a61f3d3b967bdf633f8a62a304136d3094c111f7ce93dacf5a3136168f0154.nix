{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-operational"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "http://github.com/andrewthad/vinyl-operational#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vinyl-plus" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-plus"))
          (hsPkgs."operational" or ((hsPkgs.pkgs-errors).buildDepError "operational"))
          (hsPkgs."operational-extra" or ((hsPkgs.pkgs-errors).buildDepError "operational-extra"))
          ];
        buildable = true;
        };
      };
    }