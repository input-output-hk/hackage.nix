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
    flags = { two-point-one = false; two-point-two = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mtl-compat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@ku.edu>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/mtl-compat";
      url = "";
      synopsis = "Orphan mtl instances for ExceptT from transformers-compat";
      description = "This package backports the \"Control.Monad.Except\" module (if\nusing @mtl-2.2.0.1@ or earlier) and monad class instances for\n@ExceptT@ from @transformers-compat@ (if using @mtl-2.1.3.1@\nor earlier).\n\nNote that unlike how @mtl-2.2@ or later works, the\n\"Control.Monad.Except\" module defined in this package exports\nall of @ExceptT@'s monad class instances. Therefore, you may\nhave to declare @import Control.Monad.Except ()@ at the top of\nyour file to get all of the @ExceptT@ instances in scope.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (if flags.two-point-one
          then [
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ]
          else if flags.two-point-two
            then [
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ]
            else [ (hsPkgs."mtl" or (buildDepError "mtl")) ]);
        };
      };
    }