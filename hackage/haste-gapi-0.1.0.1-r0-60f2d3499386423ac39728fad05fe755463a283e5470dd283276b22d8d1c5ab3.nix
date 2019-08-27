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
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-gapi"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Jonathan Skårstedt";
      maintainer = "jonathan.skarstedt@gmail.com";
      author = "Jonathan Skårstedt";
      homepage = "";
      url = "";
      synopsis = "Google API bindings for the Haste compiler";
      description = "This is a library to make use of the Google API Client\nLibrary for JavasScript in a Haskell environment!\nThe library works by wrapping login and giving you a\nfancy type to perform your requests in. This will ease\nchained requests that would give large amounts of clutter\nin JavaScript, while giving you a better ability to\nhandle errors.\nYour HTML doesn't even need to load the GAPI library\nitself, Haste-GAPI handles that for you!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (if flags.haste-inst
          then [ (hsPkgs."haste-lib" or (buildDepError "haste-lib")) ]
          else [
            (hsPkgs."haste-compiler" or (buildDepError "haste-compiler"))
            ]);
        };
      };
    }