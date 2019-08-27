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
      specVersion = "1.2";
      identifier = { name = "greencard"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alastair Reid <alastair@reid-consulting-uk.ltd.uk>; Sigbjorn Finne <sof@galois.com>";
      author = "Alastair Reid, Sigbjorn Finne, and Thomas Nordin";
      homepage = "http://www.haskell.org/greencard/";
      url = "";
      synopsis = "A foreign function interface pre-processor for Haskell";
      description = "Green Card is a foreign function interface preprocessor for Haskell,\nsimplifying the task of interfacing Haskell programs to external libraries\n(which are normally exposed via C interfaces).\n\nTo interface to an external function using Green Card, you write\na small procedure specification. The specification tells Green Card\nwhat (Haskell) type you want to give the function together with details\nof how the arguments (and results) to the Haskell function should\nbe marshalled to and from the data representation used by the external function.\nGreen Card will then generate gobs of low-level boilerplate code that\ntakes care of all the details.\n\nThis package supplies the executable, 'greencard', which needs GHC.\nFor the Foreign.GreenCard library, you need to install this first and then you can\ninstall greencard-lib (greencard-lib requires the greencard binary already installed).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "greencard" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }