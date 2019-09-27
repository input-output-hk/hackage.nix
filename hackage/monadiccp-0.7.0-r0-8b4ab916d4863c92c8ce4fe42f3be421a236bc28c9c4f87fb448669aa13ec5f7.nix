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
    flags = { runtimegecode = false; debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monadiccp"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom.schrijvers@cs.kuleuven.be";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://www.cs.kuleuven.be/~toms/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Monadic Constraint Programming framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."Monatron" or (buildDepError "Monatron"))
          ];
        libs = (pkgs.lib).optionals (flags.runtimegecode) [
          (pkgs."gecodesupport" or (sysDepError "gecodesupport"))
          (pkgs."gecodeset" or (sysDepError "gecodeset"))
          (pkgs."gecodeint" or (sysDepError "gecodeint"))
          (pkgs."gecodekernel" or (sysDepError "gecodekernel"))
          (pkgs."gecodesearch" or (sysDepError "gecodesearch"))
          ];
        frameworks = (pkgs.lib).optional (flags.runtimegecode) (pkgs."gecode" or (sysDepError "gecode"));
        buildable = true;
        };
      };
    }