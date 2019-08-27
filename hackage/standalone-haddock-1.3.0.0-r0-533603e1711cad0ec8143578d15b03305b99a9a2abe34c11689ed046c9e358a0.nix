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
      identifier = { name = "standalone-haddock"; version = "1.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Karl Voelker <standalone-haddock@karlv.net>";
      author = "Roman Cheplyaka";
      homepage = "https://documentup.com/ktvoelker/standalone-haddock";
      url = "";
      synopsis = "Generate standalone haddock documentation for a set of packages";
      description = "standalone-haddock generates standalone haddock Haskell documentation.\n\nWhen you simply run `cabal haddock`, the resulting HTML documentation contains\nhyperlinks to other packages on your system. As a result, you cannot publish it\non the internet (well, you can, but the links will be broken).\n\nstandalone-haddock takes several packages for which you want to publish\ndocumentation. It generates documentation for them with proper links:\n\n* links to identifiers inside this package set are relative\n\n* links to identifiers from external packages lead to Hackage\n\nThus the resulting directory with HTML files is relocatable and publishable.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "standalone-haddock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          };
        };
      };
    }