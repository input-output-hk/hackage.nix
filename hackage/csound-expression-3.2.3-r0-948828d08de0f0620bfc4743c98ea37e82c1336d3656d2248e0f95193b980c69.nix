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
      identifier = { name = "csound-expression"; version = "3.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-expression";
      url = "";
      synopsis = "library to make electronic music";
      description = "Let's make music with text! We can use Csound to describe our music. Csound has so many fantastic sound generators.\nIt's very efficient. But sometimes Csound is too low level. So many details: integer identifiers for instruments\nand arrays, should I use control rate or audio rate signals, lack of abstractions, no nested expressions and it has limited set of types.\nThis library embeds Csound in Haskell. We can use powerful Csound's primitives and glue them\ntogether with Haskell abstractions. The module \"Csound.Base\" exports all types and functions.\n\nTutorials:\n\n* Quickstart guide <http://github.com/anton-k/csound-expression/blob/master/tutorial/QuickStart.markdown>\n\n* Overview of the library <http://github.com/anton-k/csound-expression/blob/master/tutorial/Overview.markdown>\n\n* Introduction to Csound and library for Haskell users <http://github.com/anton-k/csound-expression/blob/master/tutorial/CsoundInstro.markdown>\n\n* There are examples in the source code archive <http://github.com/anton-k/csound-expression/tree/master/examples>.\n\nKey principles\n\n* Keep it simple and compact (as functional as possible).\n\n* Make it open (No dependency on Score-generation libraries. Score (or list of events)\nis represented with type class. You can use your favorite Score-generation library\nif you provide an instance for the CsdSco type class.\nCurrently there is support for temporal-music-notation library (see temporal-csound package).\n\nHow to install (for Csound and Haskell users)\n\nTo use the library we need:\n\n*   GHC - haskell compiler. This library uses GHC-specific features (<www.haskell.org/ghc>).\n\n*   cabal-install to install haskell packages (<www.haskell.org/cabal>).\n\n*   Csound compiler (version 5.13 or higher). You must get it installed on your system.\nSince we are going to generate the csound code we need to compile it to sound somehow.\nWe can find out how to install the Csound on <www.csounds.com>.\nTo test whether csound is installed open the command line and type:\n\n> csound\n\nIt should print a long message with version and available flags and libraries.\n\nIf everything is installed to install the library we can open the command line terminal and type:\n\n> cabal install csound-expression\n\nAcknowledgements (I'd like to mention those who supported me a lot with their music and ideas):\n\n* music: entertainment for the braindead, ann's'annat & alizbar, toe, iamthemorning, atoms for piece / radiohead, loscil, boards of canada,\nHozan Yamamoto, Tony Scott and Shinichi Yuize.\n\n* ideas: Conal Elliott, Oleg Kiselyov, Paul Hudak, Gabriel Gonzalez, Rich Hickey and Csound's community.\n\nWARNING: the library works best within ghci. The real-time sound rendering function dac spawns\na child process in the background which may continue to execute after you stop the main process that runs the programm.\nIt's not so in vim but it happens in the Sublime Editor and when you invoke runhaskell. So the best\nis to write you program in the separate file and then load it in the ghci and invoke the function main (which\nruns the sound rendering with the function dac).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."Boolean" or (buildDepError "Boolean"))
          (hsPkgs."csound-expression-typed" or (buildDepError "csound-expression-typed"))
          (hsPkgs."csound-expression-opcodes" or (buildDepError "csound-expression-opcodes"))
          ];
        buildable = true;
        };
      };
    }