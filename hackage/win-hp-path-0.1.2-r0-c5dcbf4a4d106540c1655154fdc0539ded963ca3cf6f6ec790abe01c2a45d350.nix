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
      specVersion = "1.10";
      identifier = { name = "win-hp-path"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Yitzchak Gale";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://github.com/ygale/win-hp-path";
      url = "";
      synopsis = "Work with multiple Haskell Platform versions on Windows";
      description = "This package provides a program needed by the\nwin-hp-path project to make it easy to work with\nmultiple versions of the Haskell Platform on\nWindows. See the home page on GitHub for more\ninfomation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        };
      exes = {
        "use-hppath" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."win-hp-path" or (buildDepError "win-hp-path"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        };
      };
    }