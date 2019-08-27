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
      identifier = { name = "ungadtagger"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Andriy Polishchuk";
      maintainer = "Andriy Polishchuk <andriy.s.polishchuk@gmail.com>";
      author = "Andriy Polishchuk";
      homepage = "http://github.com/andriyp/ungadtagger";
      url = "";
      synopsis = "Abstract GADTs from typelevel tags";
      description = "UnGADTagger encapsulates abstraction-from-GADT-tag workflow by utilizing existentials, rank2-types and kind polymorphism.\n\nAn example:\n\n> # LANGUAGE GADTs, DataKinds, KindSignatures, LambdaCase #\n>\n> import Data.GADT.Untagged\n>\n> data Tag = A | B\n>\n> data Gadt :: Tag -> * where\n>   ConA :: String   -> Gadt A\n>   ConB :: [Gadt A] -> Gadt B\n>   ConC :: Integer  -> Gadt B\n>\n> foo :: something -> [Untagged Gadt] -> String\n> foo _ = quux\n>   where\n>     quux  = concat . map baz\n>     baz x = match x \$ \\case\n>       ConA s  -> s\n>       ConB xs -> quux (map untag xs)\n>       ConC i  -> show i\n>\n> test = foo \"some cfg for e.g.\" (xs ++ ys)\n>   where\n>     xs = map untag [ConA \"A1..\", ConA \"A2..\"]\n>     ys = map untag [ConB [ConA \"A3..\"], ConC 456]\n>\n> -- > \"A1..A2..A3..456\"\n";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }