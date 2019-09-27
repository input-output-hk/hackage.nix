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
      identifier = { name = "frown"; version = "0.6.2.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Ralf Hinze";
      homepage = "";
      url = "";
      synopsis = "LALR(k) parser generator";
      description = "Frown is an LALR(k) parser generator for Haskell 98 written in Haskell 98.\nIts salient features are:\n• The generated parsers are time and space efficient. On the downside, the parsers are quite large.\n• Frown generates four different types of parsers. as a common characteristic, the parsers are\ngenuinely functional (ie ‘table-free’); the states of the underlying LR automaton are encoded as\nmutually recursive functions. Three output formats use a typed stack representation, and one format due\nto Ross Paterson (code=stackless) works even without a stack.\n• Encoding states as functions means that each state can be treated individually as opposed to a\ntable-driven approach, which necessitates a uniform treatment of states. For instance, look-ahead is\nonly used when necessary to resolve conflicts.\n• Frown comes with debugging and tracing facilities; the standard output format due to Doaitse\nSwierstra (code=standard) may be useful for teaching LR parsing.\n• Common grammatical patterns such as repetition of symbols can be captured using rule schemata. There\nare several predefined rule schemata.\n• Terminal symbols are arbitrary variable-free Haskell patterns or guards. Both terminal and\nnonterminal symbols may have an arbitrary number of synthesized attributes.\n• Frown comes with extensive documentation; several example grammars are included. Furthermore, Frown\nsupports the use of monadic lexers, monadic semantic actions, precedences, and associativity, the\ngeneration of backtracking parsers, multiple start symbols, error reporting, and a weak form of error\ncorrection.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "frown" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }