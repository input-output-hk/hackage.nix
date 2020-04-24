{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snaplet-wordpress"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/snaplet-wordpress";
      url = "";
      synopsis = "A snaplet that communicates with wordpress over it's api.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
          (hsPkgs."map-syntax" or ((hsPkgs.pkgs-errors).buildDepError "map-syntax"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."snaplet-redis" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-redis"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."hspec-snap" or ((hsPkgs.pkgs-errors).buildDepError "hspec-snap"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "test-snaplet-wordpress" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
            (hsPkgs."hspec-snap" or ((hsPkgs.pkgs-errors).buildDepError "hspec-snap"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
            (hsPkgs."snaplet-wordpress" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-wordpress"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."snaplet-redis" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-redis"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
            ];
          buildable = true;
          };
        };
      };
    }