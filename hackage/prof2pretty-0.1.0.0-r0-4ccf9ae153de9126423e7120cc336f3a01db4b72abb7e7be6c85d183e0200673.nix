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
      identifier = { name = "prof2pretty"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/prof2pretty";
      url = "";
      synopsis = "generate pretty source from time/allocation profiles";
      description = "prof2pretty is an enhanced rewrite of visual-prof that works with\nrecent GHC RTS.  sccpragmabomb adds SCC pragmas encoding source\nlocation.  prof2pretty extracts those SCCs from the profiling output\nto annotate the sources using HTML + CSS + JavaScript.\n\nUsage:\n\n> cd example\n> ghc -prof -F -pgmF=sccpragmabomb test.hs\n> cd ..\n> ./example/test +RTS -P -RTS 31416\n> prof2pretty --standalone --source=example/ test.prof\n> sensible-browser test.prof.html\n\nExample output: <http://mathr.co.uk/prof2pretty/prof2pretty-0.1.0.0.html>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "prof2pretty" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."zenc" or (buildDepError "zenc"))
            ];
          };
        "sccpragmabomb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."zenc" or (buildDepError "zenc"))
            ];
          };
        };
      };
    }