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
    flags = {
      usedebug = false;
      useffi = false;
      uselibraries = true;
      useptrs = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "husk-scheme"; version = "3.18"; };
      license = "MIT";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "http://justinethier.github.com/husk-scheme";
      url = "";
      synopsis = "R5RS Scheme interpreter, compiler, and library.";
      description = "<<https://github.com/justinethier/husk-scheme/raw/master/docs/husk-scheme.png>>\n\nHusk is a dialect of Scheme written in Haskell that implements a superset of\nthe R5RS standard. Advanced features are provided including:\n\n* First-class continuations of unlimited extent\n\n* Hygienic macros based on syntax-rules\n\n* Low-level explicit renaming macros\n\n* Library syntax from the R7RS standard\n\n* A foreign function interface (FFI) to Haskell\n\n* Full numeric tower providing support for real, rational, and complex numbers\n\n* Proper tail recursion and lexical scoping\n\n* Read-Eval-Print-Loop (REPL) interpreter, with input driven by Haskeline to provide a rich user experience\n\n* Standard library of Scheme functions, and support for many popular SRFI's\n\nHusk may be used as either a stand-alone interpreter or as an extension language within a larger Haskell application. By closely following the R5RS standard, the intent is to develop a Scheme that is as compatible as possible with other R5RS Schemes. Husk is mature enough for use in production, however it is not optimized for performance-critical applications.\n\nScheme is one of two main dialects of Lisp. Scheme follows a minimalist design philosophy: the core language consists of a small number of fundamental forms which may be used to implement other built-in forms. Scheme is an excellent language for writing small, elegant programs, and may also be used to write scripts or embed scripting functionality within a larger application.\n\nFor documentation and examples, see\n<http://justinethier.github.io/husk-scheme/documentation.html>.\n\nFor detailed information on each release, see\n<http://justinethier.github.io/husk-scheme/news.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."knob" or (buildDepError "knob"))
          ] ++ (pkgs.lib).optionals (flags.useffi) [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          ];
        };
      exes = {
        "huski" = {
          depends = [
            (hsPkgs."husk-scheme" or (buildDepError "husk-scheme"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            ] ++ (pkgs.lib).optionals (flags.useffi) [
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            ];
          };
        "huskc" = {
          depends = [
            (hsPkgs."husk-scheme" or (buildDepError "husk-scheme"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ] ++ (pkgs.lib).optionals (flags.useffi) [
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            ];
          };
        };
      };
    }