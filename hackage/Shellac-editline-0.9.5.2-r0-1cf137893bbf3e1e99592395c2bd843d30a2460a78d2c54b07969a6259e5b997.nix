{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Shellac-editline"; version = "0.9.5.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."editline" or (errorHandler.buildDepError "editline"))
          (hsPkgs."Shellac" or (errorHandler.buildDepError "Shellac"))
          ];
        buildable = true;
        };
      };
    }