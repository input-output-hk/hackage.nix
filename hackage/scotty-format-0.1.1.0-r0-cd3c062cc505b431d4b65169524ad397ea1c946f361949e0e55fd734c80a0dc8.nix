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
      identifier = { name = "scotty-format"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "2016 Giovanni Cappellotto";
      maintainer = "potomak84@gmail.com";
      author = "Giovanni Cappellotto";
      homepage = "https://github.com/potomak/scotty-format#readme";
      url = "";
      synopsis = "Response format helper for the Scotty web framework.";
      description = "scotty-format is a helper for the Scotty web framework that helps you defining\ndifferent response formats based on the request's `Accept` header value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "scotty-format-example" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."scotty-format" or (buildDepError "scotty-format"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "scotty-format-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scotty-format" or (buildDepError "scotty-format"))
            ];
          };
        };
      };
    }