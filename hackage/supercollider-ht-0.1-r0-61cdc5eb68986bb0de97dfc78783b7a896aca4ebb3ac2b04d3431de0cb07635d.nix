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
    flags = { splitbase = true; buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "supercollider-ht"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2008-2009";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskell SuperCollider utilities";
      description = "Some additional modules I regular use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* play routines using the Transport monad from opensoundcontrol-ht\n\n* example effects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hosc" or (buildDepError "hosc"))
          (hsPkgs."hsc3" or (buildDepError "hsc3"))
          (hsPkgs."opensoundcontrol-ht" or (buildDepError "opensoundcontrol-ht"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = { "timing-example" = {}; };
      };
    }