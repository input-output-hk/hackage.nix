{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "GoogleDirections"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Favil Orbedios";
      maintainer = "Favil Orbedios <favilo@gmail.com>";
      author = "Favil Orbedios <favilo@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell Interface to Google Directions API";
      description = "An interface to the Google Directions API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."AttoJson" or ((hsPkgs.pkgs-errors).buildDepError "AttoJson"))
          (hsPkgs."download-curl" or ((hsPkgs.pkgs-errors).buildDepError "download-curl"))
          ];
        buildable = true;
        };
      };
    }