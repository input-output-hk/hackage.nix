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
      specVersion = "1.8";
      identifier = { name = "groom"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ezyang@mit.edu";
      author = "Edward Z. Yang";
      homepage = "";
      url = "";
      synopsis = "Pretty printing for well-behaved Show\ninstances.";
      description = "Automatically derived Show instances are an easy way\nto inspect data in your program.  However, for large\ndata-structures, the resulting output lacks\nwhitespace, making it unreadable.  Groom offers an\nreplacement to `show' called `groom' which attempts\nto pretty-print the output of `show'.  For example:\n\n> let x = parseExp \"foobar 1 [1,2]\"\n> in do\n>   putStrLn (show x)\n>   putStrLn (groom x)\n\nresults in:\n\n> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))\n> ParseOk\n>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))\n>      (List [Lit (Int 1), Lit (Int 2)]))\n\nGroom works only on Show instances that output valid\nHaskell code; if Groom can't understand its input,\nit will not make any changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "groom" = {
          depends = [
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }