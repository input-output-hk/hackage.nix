{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "STMonadTrans"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josef.svenningsson@gmail.com";
      author = "Josef Svenningsson";
      homepage = "";
      url = "";
      synopsis = "A monad transformer version of the ST monad";
      description = "A monad transformer version of the ST monad\nWarning! This monad transformer should not be used with monads that\ncan contain multiple answers, like the list monad. The reason is that\nthe state token will be duplicated across the different answers and\nthis causes Bad Things to happen (such as loss of referential\ntransparency). Safe monads include the monads State, Reader, Writer,\nMaybe and combinations of their corresponding monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."STMonadTrans" or ((hsPkgs.pkgs-errors).buildDepError "STMonadTrans"))
            ];
          buildable = true;
          };
        };
      };
    }