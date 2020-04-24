{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-to-exp"; version = "0.0.1.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "Alexis King";
      author = "";
      homepage = "https://github.com/lexi-lambda/th-to-exp#readme";
      url = "";
      synopsis = "Provides a way to persist data from compile-time to runtime.";
      description = "This package provides a way to persist data from compile-time to runtime by\nproducing Template Haskell expressions that evaluate to particular values. For\nexample, if you have a value @Just 1@, then @toExp (Just 1)@ will produce the\n/expression/ @[e| Just 1 |]@, which can be used in a splice. For a more direct\nexample, here’s what that looks like without the quasiquote notation:\n\n>>> toExp (Just 1)\nAppE (ConE GHC.Base.Just) (LitE (IntegerL 1))\n\nThis is done by using a typeclass, 'ToExp', that can be automatically derived\nfor types that have a 'Generic' instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "th-to-exp-test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."th-to-exp" or ((hsPkgs.pkgs-errors).buildDepError "th-to-exp"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }