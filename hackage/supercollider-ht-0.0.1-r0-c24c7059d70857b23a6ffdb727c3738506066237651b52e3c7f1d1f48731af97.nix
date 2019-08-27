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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "supercollider-ht"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2008";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://darcs.haskell.org/supercollider-ht";
      url = "";
      synopsis = "Haskell SuperCollider utilities";
      description = "Some additional modules I regular use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* a @Transport@ type for writing to files (that's however less important, since @hsc3@ itself does now support SuperCollider Non-Real-Time mode)\n\n* a @Reader@ monad that hides the handle for interaction with the SuperCollider server\n\n* play routines that use this monad.\n\n* example effects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hosc" or (buildDepError "hosc"))
          (hsPkgs."hsc3" or (buildDepError "hsc3"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      };
    }