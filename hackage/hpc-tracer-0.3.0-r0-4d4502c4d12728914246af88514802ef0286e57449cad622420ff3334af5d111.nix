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
      specVersion = "0";
      identifier = { name = "hpc-tracer"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Andy Gill, Colin Runciman, (c) 2006-2007 Galois Inc.";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill <andygill@ku.edu>";
      homepage = "http://darcs.unsafePerformIO.com/hpc-tracer";
      url = "";
      synopsis = "Tracer with AJAX interface";
      description = "An incomplete component of the Hpc toolkit which provides the\nability to step through coverage ticks as they happen, giving a\npoor mans debugger.  Requires the binary being traced to be build\nusing a specific version of ghc-6.7, so YMWV.\nThe plan is to port this to the new GHC API, giving both tracing\nand free variable examination via an Ajax interface.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpc-tracer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }