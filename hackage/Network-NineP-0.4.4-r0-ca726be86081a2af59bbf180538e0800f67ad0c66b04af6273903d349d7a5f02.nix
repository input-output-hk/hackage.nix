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
      specVersion = "1.6";
      identifier = { name = "Network-NineP"; version = "0.4.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "High-level abstraction over 9P protocol";
      description = "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."NineP" or (buildDepError "NineP"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."mstate" or (buildDepError "mstate"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."stateref" or (buildDepError "stateref"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."monad-peel" or (buildDepError "monad-peel"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          ];
        };
      exes = { "test" = {}; };
      };
    }