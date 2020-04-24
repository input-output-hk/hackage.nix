{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { high_precision_date = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-mongoDB"; version = "2.9.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "MongoDB backend for the persistent library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "mongoDB"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."path-pieces" or ((hsPkgs.pkgs-errors).buildDepError "path-pieces"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "persistent-mongoDB"))
            (hsPkgs."persistent-qq" or ((hsPkgs.pkgs-errors).buildDepError "persistent-qq"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            (hsPkgs."persistent-test" or ((hsPkgs.pkgs-errors).buildDepError "persistent-test"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "mongoDB"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }