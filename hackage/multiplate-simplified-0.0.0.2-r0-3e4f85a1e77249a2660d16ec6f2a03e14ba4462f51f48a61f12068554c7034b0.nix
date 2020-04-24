{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "multiplate-simplified"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "2012, Balazs Endresz";
      maintainer = "Balazs Endresz <balazs.endresz@gmail.com>";
      author = "Balazs Endresz";
      homepage = "";
      url = "";
      synopsis = "Shorter, more generic functions for Multiplate.";
      description = "This module provides wrappers around some Multiplate functions to spare\nthe Projector argument. This makes it simpler to use them, and\nthey will work for any data type, but a simple instance definition\nhas to be supplied for each one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."multiplate" or ((hsPkgs.pkgs-errors).buildDepError "multiplate"))
          ];
        buildable = true;
        };
      };
    }