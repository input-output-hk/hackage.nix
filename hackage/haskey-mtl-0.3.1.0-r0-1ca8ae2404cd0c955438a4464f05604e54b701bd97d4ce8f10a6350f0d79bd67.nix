{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskey-mtl"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Henri Verroken, Steven Keuchel";
      maintainer = "steven.keuchel@gmail.com";
      author = "Henri Verroken, Steven Keuchel";
      homepage = "https://github.com/haskell-haskey";
      url = "";
      synopsis = "A monad transformer supporting Haskey transactions.";
      description = "This library provides a monad transformer supporting Haskey transactions,\nwith default lifted instances for all mtl monad transformers.\n\nFor more information on how to use this package, visit\n<https://github.com/haskell-haskey/haskey-mtl>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."haskey-btree" or ((hsPkgs.pkgs-errors).buildDepError "haskey-btree"))
          (hsPkgs."haskey" or ((hsPkgs.pkgs-errors).buildDepError "haskey"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "haskey-mtl-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskey" or ((hsPkgs.pkgs-errors).buildDepError "haskey"))
            (hsPkgs."haskey-btree" or ((hsPkgs.pkgs-errors).buildDepError "haskey-btree"))
            (hsPkgs."haskey-mtl" or ((hsPkgs.pkgs-errors).buildDepError "haskey-mtl"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }