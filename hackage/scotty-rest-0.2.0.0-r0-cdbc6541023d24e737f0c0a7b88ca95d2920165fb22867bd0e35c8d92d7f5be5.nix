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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "scotty-rest"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015, Erlend Hamberg";
      maintainer = "erlend@hamberg.no";
      author = "Erlend Hamberg";
      homepage = "http://github.com/ehamberg/scotty-rest";
      url = "";
      synopsis = "Webmachine-style REST library for scotty";
      description = "Webmachine-like REST library for Scotty.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."http-date" or (buildDepError "http-date"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          ];
        buildable = true;
        };
      exes = {
        "database-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scotty-rest" or (buildDepError "scotty-rest"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "hello-world-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scotty-rest" or (buildDepError "scotty-rest"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "parameters-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scotty-rest" or (buildDepError "scotty-rest"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "mutable-state-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scotty-rest" or (buildDepError "scotty-rest"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."scotty-rest" or (buildDepError "scotty-rest"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            ];
          buildable = true;
          };
        };
      };
    }