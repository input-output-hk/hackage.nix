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
      specVersion = "1.12";
      identifier = { name = "web-rep"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tony Day <tonyday567@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "representations of a web pag";
      description = "See readme.md for verbage (if any)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."box" or (buildDepError "box"))
          (hsPkgs."clay" or (buildDepError "clay"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
          (hsPkgs."javascript-bridge" or (buildDepError "javascript-bridge"))
          (hsPkgs."language-javascript" or (buildDepError "language-javascript"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."lucid-svg" or (buildDepError "lucid-svg"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          ];
        buildable = true;
        };
      exes = {
        "page-example" = {
          depends = [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."box" or (buildDepError "box"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."web-rep" or (buildDepError "web-rep"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."web-rep" or (buildDepError "web-rep"))
            ];
          buildable = true;
          };
        };
      };
    }