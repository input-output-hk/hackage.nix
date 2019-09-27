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
    flags = { prim-supports-any = false; ghc_7_7 = true; ghc_8_0 = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "ghc-heap-view"; version = "0.5.9"; };
      license = "BSD-3-Clause";
      copyright = "2012-2014 Joachim Breitner";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner, Dennis Felsing";
      homepage = "";
      url = "";
      synopsis = "Extract the heap representation of Haskell values and thunks";
      description = "This library provides functions to introspect the Haskell heap, for example\nto investigate sharing and lazy evaluation. As this is tied to the internals\nof the compiler, it only works with specific versions. Currently, GHC 7.4\nthrough 7.10 should be supported.\n\nIt has been inspired by (and taken code from) the vacuum package and the GHCi\ndebugger, but also allows to investigate thunks and other closures.\n\nThis package also provides a new GHCi-command, @:printHeap@, which allows you\nto inspect the current heap representation of a value, including sharing and\ncyclic references. To enable the command, you need to load the included ghci\nscript or add it to @~/.ghci@, as explained by @cabal install@. Once it is\nset up, you can do this:\n\n>> let value = \"A Value\"\n>> let x = (value, if head value == 'A' then value else \"\", cycle [True, False])\n>> :printHeap x\n>let x1 = _bco\n>    x21 = []\n>in (x1,_bco,_bco)\n>> length (take 100 (show x)) `seq` return () -- evaluate everything\n>> :printHeap x\n>let x1 = \"A Value\"\n>    x16 = True : False : x16\n>in (x1,x1,x16)\n\nYou can change the maximum recursion depth using @:setPrintHeapDepth@:\n\n>> :setPrintHeapDepth 3\n>> :printHeap x\n>let x1 = C# 'A' : ... : ...\n>in (x1,x1,True : ... : ...)\n\nIf the view is impaired by blackholes (written @_bh@), running\n@System.Mem.performGC@ usually helps.\n\nThe work on this package has been supported by the Deutsche Telekom Stiftung\n(<http://telekom-stiftung.de>).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ] ++ [ (hsPkgs."ghc" or (buildDepError "ghc")) ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-heap-view" or (buildDepError "ghc-heap-view"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }