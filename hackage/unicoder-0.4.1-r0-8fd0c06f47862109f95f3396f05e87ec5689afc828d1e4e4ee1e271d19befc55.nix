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
      specVersion = "1.9.2";
      identifier = { name = "unicoder"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013, 2014, Okuno Zankoku";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "https://github.com/Zankoku-Okuno/unicoder";
      url = "";
      synopsis = "Make writing in unicode easy.";
      description = "Unicoder is a command-line tool transforms text documents, replacing simple\npatterns with unicode equivalents. The patterns can be easily configured by\nthe user.\nThis package is especially meant to open the vast and expressive array\nof unicode identifiers to programmers and language designers, but there's\nnothing wrong with a technically savvy user putting unicoder to work\non documents for human consumption.\nAny system of special characters can be made easy to type on any keyboard\nand in any context as long as unicode supports it.\n\nCabal wants to fight me over typesetting some examples, so check out\n<http://zankoku-okuno.viewdocs.io/unicoder/ the real docs>\nfor a decent look at the features.\n\nIn the interests of giving readers /some/ idea whats going on,\nwith the default settings,\n\n> \\E x. \\A y. x \\-> y\n> \\l x,y. x \\of x \\of y\n\nbecomes\n\n> ∃x ∀y x → y\n> λ x,y. x ∘ x ∘ y\n\nexcept that the newline isn't removed (thanks, cabal!). Also, there are a couple\nimportant features that I can't seem to get cabal to even parse (thanks again!).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      exes = {
        "unicoder" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-unicoder" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            ];
          buildable = true;
          };
        };
      };
    }