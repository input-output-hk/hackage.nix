{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "servant-pagination"; version = "2.1.2"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2018 Chordify";
      maintainer = "Chordify <haskelldevelopers@chordify.net>, Matthias Benkort <matthias.benkort@gmail.com>";
      author = "Chordify";
      homepage = "https://github.com/chordify/haskell-servant-pagination";
      url = "";
      synopsis = "Type-safe pagination for Servant APIs";
      description = "This module offers opinionated helpers to declare a type-safe and a flexible pagination\nmecanism for Servant APIs. This design, inspired by Heroku's API, provides a small framework\nto communicate about a possible pagination feature of an endpoint, enabling a client to\nconsume the API in different fashions (pagination with offset / limit, endless scroll using last\nreferenced resources, ascending and descending ordering, etc.)";
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
            (hsPkgs."servant-pagination" or ((hsPkgs.pkgs-errors).buildDepError "servant-pagination"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }