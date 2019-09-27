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
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "monadiccp-gecode"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jrt@informatik.uni-kiel.de";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://users.ugent.be/~tschrijv/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Gecode extension for the Monadic Constraint Programming Framework (code generator and runtime solver backend)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monadiccp" or (buildDepError "monadiccp"))
          ];
        libs = [
          (pkgs."gecodesupport" or (sysDepError "gecodesupport"))
          (pkgs."gecodeset" or (sysDepError "gecodeset"))
          (pkgs."gecodeint" or (sysDepError "gecodeint"))
          (pkgs."gecodekernel" or (sysDepError "gecodekernel"))
          (pkgs."gecodesearch" or (sysDepError "gecodesearch"))
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ];
        frameworks = [ (pkgs."gecode" or (sysDepError "gecode")) ];
        buildable = true;
        };
      tests = {
        "Queens" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monadiccp-gecode" or (buildDepError "monadiccp-gecode"))
            ];
          buildable = true;
          };
        };
      };
    }