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
      split-base = true;
      bytestring-in-base = true;
      extensible-exceptions-in-base = true;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "cgi"; version = "3001.1.7.5"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Andy Gill, Anders Kaseorg, Ian Lynagh,\nErik Meijer, Sven Panne, Jeremy Shaw";
      maintainer = "Anders Kaseorg <andersk@mit.edu>";
      author = "Bjorn Bringert";
      homepage = "http://andersk.mit.edu/haskell/cgi/";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ])) ++ (if flags.bytestring-in-base
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ])) ++ (if flags.extensible-exceptions-in-base
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            ]);
        };
      };
    }