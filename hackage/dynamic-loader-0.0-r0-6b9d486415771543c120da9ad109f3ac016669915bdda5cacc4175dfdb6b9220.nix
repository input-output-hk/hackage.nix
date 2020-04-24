{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dynamic-loader"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2004, Hampus Ram\nCopyright (c) 2012-2013, Gabor Greif";
      maintainer = "Gabor Greif <ggreif+dynamic@gmail.com>";
      author = "Hampus Ram";
      homepage = "https://github.com/ggreif/dynamic-loader";
      url = "";
      synopsis = "lightweight loader of GHC-based modules or packages";
      description = "This package allows the linking against GHC-compiled\nobject files and shared libraries. Specialized modules\nare provided for navigating directory structure and\ndependency checking.\n\nNo attempt at type-safe loading of symbols is made.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }