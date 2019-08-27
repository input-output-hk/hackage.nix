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
      identifier = { name = "animate-preview"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Joe Vargas";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/animate-preview#readme";
      url = "";
      synopsis = "Preview tool for sprite animation";
      description = "Preview tool for sprite animation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."animate" or (buildDepError "animate"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."key-state" or (buildDepError "key-state"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."sdl2" or (buildDepError "sdl2"))
          (hsPkgs."sdl2-gfx" or (buildDepError "sdl2-gfx"))
          (hsPkgs."sdl2-image" or (buildDepError "sdl2-image"))
          (hsPkgs."sdl2-ttf" or (buildDepError "sdl2-ttf"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-conversions" or (buildDepError "text-conversions"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "animate-preview" = {
          depends = [
            (hsPkgs."animate-preview" or (buildDepError "animate-preview"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }