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
      two = false;
      three = false;
      four = false;
      five = true;
      mtl = true;
      generic-deriving = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "transformers-compat"; version = "0.6.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/transformers-compat/";
      url = "";
      synopsis = "A small compatibility shim for the transformers library";
      description = "This package includes backported versions of types that were added\nto transformers in transformers 0.3, 0.4, and 0.5 for users who need strict\ntransformers 0.2 or 0.3 compatibility to run on old versions of the\nplatform, but also need those types.\n\nThose users should be able to just depend on @transformers >= 0.2@\nand @transformers-compat >= 0.3@.\n\nNote: missing methods are not supplied, but this at least permits the types to be used.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (if flags.five
          then [ (hsPkgs."transformers" or (buildDepError "transformers")) ]
          else if flags.four
            then [ (hsPkgs."transformers" or (buildDepError "transformers")) ]
            else if flags.three
              then [
                (hsPkgs."transformers" or (buildDepError "transformers"))
                ] ++ (pkgs.lib).optional (flags.mtl) (hsPkgs."mtl" or (buildDepError "mtl"))
              else if flags.two
                then [
                  (hsPkgs."transformers" or (buildDepError "transformers"))
                  ] ++ (pkgs.lib).optional (flags.mtl) (hsPkgs."mtl" or (buildDepError "mtl"))
                else [
                  (hsPkgs."transformers" or (buildDepError "transformers"))
                  ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" || flags.generic-deriving) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (pkgs.lib).optionals (flags.generic-deriving) ((pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0" && flags.generic-deriving) (hsPkgs."generic-deriving" or (buildDepError "generic-deriving")));
        buildable = true;
        };
      };
    }