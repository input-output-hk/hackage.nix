let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "syntax-example"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example application using syntax, a library for abstract syntax descriptions.";
      description = "Example application using syntax, a library for abstract syntax descriptions.\n\nThe code:\n\n* <https://github.com/Pawel834/syntax-example/blob/83c283823749038db3d21aaf99105f456e25bac7/Main.hs Main.hs>\n\nExample input:\n\n> (\\f->\n> (\\x\n>      -> f     ((x) x)) (\\x\n> -> f  (x x)\n> )\n> (\\x -> \"test\")\n> (\\y -> y +2.0e13))\n\nExample output:\n\n> Abs \"f\" (App (App (App (Abs \"x\" (App (Var \"f\") (App (Var \"x\") (Var \"x\")))) (Abs \"x\" (App (Var \"f\") (App (Var \"x\") (Var \"x\"))))) (Abs \"x\" (Lit (LitStr \"test\")))) (Abs \"y\" (App (Var \"y\") (Lit (LitNum 2.0e13)))))\n> \\f -> (\\x -> f (x x)) (\\x -> f (x x)) (\\x -> \"test\") (\\y -> y 2.0e13)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "syntax-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."semi-iso" or (buildDepError "semi-iso"))
            (hsPkgs."syntax" or (buildDepError "syntax"))
            (hsPkgs."syntax-attoparsec" or (buildDepError "syntax-attoparsec"))
            (hsPkgs."syntax-printer" or (buildDepError "syntax-printer"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      };
    }