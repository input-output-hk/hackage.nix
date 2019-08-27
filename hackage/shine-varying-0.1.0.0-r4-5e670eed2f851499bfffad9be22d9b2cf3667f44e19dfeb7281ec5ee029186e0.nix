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
      specVersion = "1.8";
      identifier = { name = "shine-varying"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2016 Francesco Gazzetta";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/shine-varying";
      url = "";
      synopsis = "FRP interface for shine using the varying package";
      description = "This package exports a function that lets you control shine's\nfunctionality through a `Var` that maps from inputs to a `Picture`\nplus a bunch of utility `Var`s, like the current time and the\nkeypresses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          (hsPkgs."shine" or (buildDepError "shine"))
          (hsPkgs."varying" or (buildDepError "varying"))
          (hsPkgs."keycode" or (buildDepError "keycode"))
          ];
        };
      tests = {
        "test-shine-varying-misc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
            (hsPkgs."shine" or (buildDepError "shine"))
            (hsPkgs."shine-varying" or (buildDepError "shine-varying"))
            (hsPkgs."varying" or (buildDepError "varying"))
            (hsPkgs."keycode" or (buildDepError "keycode"))
            ];
          };
        "test-shine-varying-resize" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
            (hsPkgs."shine" or (buildDepError "shine"))
            (hsPkgs."shine-varying" or (buildDepError "shine-varying"))
            ];
          };
        };
      };
    }