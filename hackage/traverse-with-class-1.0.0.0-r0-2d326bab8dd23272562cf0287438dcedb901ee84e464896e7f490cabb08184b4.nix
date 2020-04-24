{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "traverse-with-class"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Generic applicative traversals";
      description = "This is a generic programming library in the spirit of\n\\\"Scrap your boilerplate with class\\\", but with several\nimprovements — most notably, it's based on the @gtraverse@\nfunction instead of @gfoldl@.\n@gtraverse@ is equivalent in power to @gfoldl@, but lets\nyou more easily write non-standard views of the data type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."traverse-with-class" or ((hsPkgs.pkgs-errors).buildDepError "traverse-with-class"))
            ];
          buildable = true;
          };
        };
      };
    }