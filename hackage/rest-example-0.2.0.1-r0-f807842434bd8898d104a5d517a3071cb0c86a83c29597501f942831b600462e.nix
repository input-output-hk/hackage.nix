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
    flags = { happstack = false; wai = false; snap = false; gen = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rest-example"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Silk B.V.";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "http://www.github.com/silkapp/rest";
      url = "";
      synopsis = "Example project for rest";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."generic-aeson" or (buildDepError "generic-aeson"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."json-schema" or (buildDepError "json-schema"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."regular" or (buildDepError "regular"))
          (hsPkgs."regular-xmlpickler" or (buildDepError "regular-xmlpickler"))
          (hsPkgs."rest-core" or (buildDepError "rest-core"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "rest-example-happstack" = {
          depends = (pkgs.lib).optionals (flags.happstack) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rest-core" or (buildDepError "rest-core"))
            (hsPkgs."rest-example" or (buildDepError "rest-example"))
            (hsPkgs."rest-happstack" or (buildDepError "rest-happstack"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          buildable = if flags.happstack then true else false;
          };
        "rest-example-wai" = {
          depends = (pkgs.lib).optionals (flags.wai) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rest-core" or (buildDepError "rest-core"))
            (hsPkgs."rest-example" or (buildDepError "rest-example"))
            (hsPkgs."rest-wai" or (buildDepError "rest-wai"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          buildable = if flags.wai then true else false;
          };
        "rest-example-snap" = {
          depends = (pkgs.lib).optionals (flags.snap) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rest-core" or (buildDepError "rest-core"))
            (hsPkgs."rest-example" or (buildDepError "rest-example"))
            (hsPkgs."rest-snap" or (buildDepError "rest-snap"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          buildable = if flags.snap then true else false;
          };
        "rest-example-gen" = {
          depends = (pkgs.lib).optionals (flags.gen) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rest-core" or (buildDepError "rest-core"))
            (hsPkgs."rest-example" or (buildDepError "rest-example"))
            (hsPkgs."rest-gen" or (buildDepError "rest-gen"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ];
          buildable = if flags.gen then true else false;
          };
        };
      };
    }