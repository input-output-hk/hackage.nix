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
      specVersion = "1.6";
      identifier = { name = "frisby"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "John Meacham (2006)";
      maintainer = "Ben Gamari <ben@smart-cactus.org>";
      author = "John Meacham <john@repetae.net>";
      homepage = "http://repetae.net/computer/frisby/";
      url = "http://repetae.net/repos/frisby";
      synopsis = "Linear time composable parser for PEG grammars";
      description = "frisby is a parser library that can parse arbitrary PEG\ngrammars in linear time. Unlike other parsers of PEG grammars,\nfrisby need not be supplied with all possible rules up front,\nallowing composition of smaller parsers.\n\nPEG parsers are never ambiguous and allow infinite lookahead\nwith no backtracking penalty. Since PEG parsers can look ahead\narbitrarily, they can easily express rules such as the maximal\nmunch rule used in lexers, meaning no separate lexer is needed.\n\nIn addition to many standard combinators, frisby provides\nroutines to translate standard regex syntax into frisby parsers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        buildable = true;
        };
      };
    }