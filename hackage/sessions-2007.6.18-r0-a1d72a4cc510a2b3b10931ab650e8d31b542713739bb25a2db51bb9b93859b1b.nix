{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "sessions"; version = "2007.6.18"; };
      license = "LicenseRef-LGPL";
      copyright = "Matthew Sackman";
      maintainer = "matthew@wellquite.org";
      author = "Matthew Sackman";
      homepage = "http://www.wellquite.org/sessions/";
      url = "";
      synopsis = "Session Types for Haskell";
      description = "This library implements session types for Haskell.\nIt is currently extremely experimental and only\ncompiles with GHC 6.7.x or better. Documentation\nis also extremely scarce at the moment but hopefully\nshould appear soon.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }