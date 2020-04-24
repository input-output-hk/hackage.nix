{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "servant-pagination"; version = "2.3.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2018-2020 Chordify";
      maintainer = "Chordify <haskelldevelopers@chordify.net>\nMatthias Benkort <matthias.benkort@gmail.com>";
      author = "Chordify";
      homepage = "https://github.com/chordify/haskell-servant-pagination";
      url = "";
      synopsis = "Type-safe pagination for Servant APIs";
      description = "This module offers opinionated helpers to declare a type-safe and a\nflexible pagination mecanism for Servant APIs. This design, inspired by\nHeroku's API, provides a small framework to communicate about a possible\npagination feature of an endpoint, enabling a client to consume the API in\ndifferent fashions (pagination with offset / limit, endless scroll using\nlast referenced resources, ascending and descending ordering, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."uri-encode" or ((hsPkgs.pkgs-errors).buildDepError "uri-encode"))
          ];
        buildable = true;
        };
      exes = {
        "servant-pagination-simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-pagination" or ((hsPkgs.pkgs-errors).buildDepError "servant-pagination"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "servant-pagination-complex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-pagination" or ((hsPkgs.pkgs-errors).buildDepError "servant-pagination"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "servant-pagination-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."servant-pagination" or ((hsPkgs.pkgs-errors).buildDepError "servant-pagination"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }