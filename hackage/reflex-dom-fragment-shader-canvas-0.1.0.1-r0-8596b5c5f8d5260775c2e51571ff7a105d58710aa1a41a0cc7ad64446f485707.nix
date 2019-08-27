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
      identifier = {
        name = "reflex-dom-fragment-shader-canvas";
        version = "0.1.0.1";
        };
      license = "MIT";
      copyright = "2018 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/reflex-dom-fragment-shader-canvas";
      url = "";
      synopsis = "A reflex-dom widget to draw on a canvas with a fragment shader program";
      description = "This simple reflex-dom widget takes a `Dynamic t Text` value representing\nthe source code of a WebGL fragment shader, and renders it to\na HTML canvas element.\n\nA live demo can be found at <https://nomeata.github.io/reflex-dom-fragment-shader-canvas/>.\n\nIt also provides possible compiler errors in another `Dynamic t Text`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
            (hsPkgs."reflex-dom-fragment-shader-canvas" or (buildDepError "reflex-dom-fragment-shader-canvas"))
            ];
          };
        };
      };
    }