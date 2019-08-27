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
      identifier = { name = "record-preprocessor"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record-preprocessor";
      url = "";
      synopsis = "Compiler preprocessor introducing a syntactic extension for anonymous records";
      description = "This package provides an executable \"record-preprocessor\",\nwhich can be used as a compilation phase to add support for\nthe Anynonymous Records syntax.\n\nTo get a look at what syntax the preprocessor enables check out\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.4/src/demo/Main.hs the demo> and\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.4/src/record-preprocessor.cabal its configuration in the Cabal file>,\nwhich are both bundled with this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {};
      exes = {
        "record-preprocessor" = {
          depends = [
            (hsPkgs."record-syntax" or (buildDepError "record-syntax"))
            (hsPkgs."conversion" or (buildDepError "conversion"))
            (hsPkgs."conversion-text" or (buildDepError "conversion-text"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."record-preprocessor" or (buildDepError "record-preprocessor"))
            (hsPkgs."record" or (buildDepError "record"))
            (hsPkgs."basic-lens" or (buildDepError "basic-lens"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            ];
          };
        };
      };
    }