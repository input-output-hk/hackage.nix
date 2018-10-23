{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HAppSHelpers";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomashartman1@gmail.com";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "OBSOLETE. Please use happstack-helpers";
      description = "OBSOLETE. Please use happstack-helpers";
      buildType = "Simple";
    };
    components = {
      "HAppSHelpers" = {};
    };
  }