{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "binary-ext"; version = "2.0"; };
      license = "LicenseRef-Apache";
      copyright = "2017 Warlock <internalmike@gmail.com>";
      maintainer = "Warlock <internalmike@gmail.com>";
      author = "Warlock <internalmike@gmail.com>";
      homepage = "https://github.com/A1-Triard/binary-ext#readme";
      url = "";
      synopsis = "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.";
      description = "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."mono-traversable" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "binary-ext-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."binary-ext" or ((hsPkgs.pkgs-errors).buildDepError "binary-ext"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."mono-traversable" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            ];
          buildable = true;
          };
        };
      };
    }