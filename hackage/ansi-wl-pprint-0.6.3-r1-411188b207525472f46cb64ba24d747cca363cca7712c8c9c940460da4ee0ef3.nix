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
    flags = { newbase = true; example = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ansi-wl-pprint"; version = "0.6.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Daan Leijen, Max Bolingbroke";
      homepage = "http://github.com/batterseapower/ansi-wl-pprint";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
      description = "This is a pretty printing library based on Wadler's paper \"A Prettier Printer\". It has been enhanced with support for ANSI terminal colored output using the ansi-terminal package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "ansi-wl-pprint-example" = {
          depends = [
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }