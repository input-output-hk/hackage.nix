{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "solga"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2016 Patrick Chilton";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "https://github.com/chpatrick/solga";
      url = "";
      synopsis = "Simple typesafe web routing";
      description = "A library for easily specifying web APIs and implementing them in a type-safe way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "solga-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."solga" or ((hsPkgs.pkgs-errors).buildDepError "solga"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai-json"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }