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
      identifier = { name = "AppleScript"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Wouter Swierstra <wouter.swierstra@gmail.com>, Reiner Pope <reiner.pope@gmail.com>";
      homepage = "https://github.com/reinerp/haskell-AppleScript";
      url = "";
      synopsis = "Call AppleScript from Haskell, and then call back into Haskell.";
      description = "This package enables you to compile and execute AppleScript code from\nHaskell, and provides support for this AppleScript code to call back\ninto Haskell. To get started, see \"Foreign.AppleScript.Rich\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isOsx
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Carbon" or (sysDepError "Carbon"));
        };
      };
    }