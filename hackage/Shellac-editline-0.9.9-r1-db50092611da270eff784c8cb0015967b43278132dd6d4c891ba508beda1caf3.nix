{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "Shellac-editline"; version = "0.9.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://rwd.rdockins.name/shellac/home/";
      url = "";
      synopsis = "Editline backend module for Shellac";
      description = "This package provides a Shellac backend based on the editline\nlibrary.  editline provides a subset of the functionality\nprovided by the GNU readline library.  However, it is licenced\nwith a BSD-style license and is therefore suitable for some situations\nwhere GNU readline is not.  This backend features all the line\nediting capabilities provided by editline.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."editline" or ((hsPkgs.pkgs-errors).buildDepError "editline"))
          (hsPkgs."Shellac" or ((hsPkgs.pkgs-errors).buildDepError "Shellac"))
          ];
        buildable = true;
        };
      };
    }