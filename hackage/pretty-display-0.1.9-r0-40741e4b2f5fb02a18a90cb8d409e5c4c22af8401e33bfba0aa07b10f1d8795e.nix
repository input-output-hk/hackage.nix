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
      identifier = { name = "pretty-display"; version = "0.1.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/githubuser/pretty-display#readme";
      url = "";
      synopsis = "Typeclass for human-readable display";
      description = "<<https://travis-ci.org/jsermeno/pretty-display.svg?branch=master>>\n<<https://img.shields.io/badge/language-Haskell-blue.svg>>\n<<http://img.shields.io/badge/license-BSD3-brightgreen.svg>>\n\nIn haskell the @Show@ typeclass is used to display a\nsyntactically correct Haskell expression. However, there\nare times when you want to provide a richer display for a\nvalue while still retaining the benefits of having\nderived @Show@ instances. This can be especially useful\nwhen working interactively in ghci. @Text.Display@\nprovides a tiny registered package with the @Display@\ntypeclass just for this purpose.\n\n<<https://cloud.githubusercontent.com/assets/197051/20434593/74a2b66c-ad76-11e6-9eef-cff6352d08b1.png>>\n\nFor examples visit the\n<https://github.com/githubuser/pretty-display#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          ];
        };
      exes = {
        "pretty-display-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty-display" or (buildDepError "pretty-display"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            ];
          };
        };
      tests = {
        "pretty-display-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty-display" or (buildDepError "pretty-display"))
            ];
          };
        };
      };
    }