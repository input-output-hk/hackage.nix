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
      identifier = { name = "prompt"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Justin Le";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/prompt";
      url = "";
      synopsis = "Monad (and transformer) for deferred-effect pure\nprompt-response queries";
      description = "Monad (and transformer) for delayed-effect \"pure\"\nprompt-and-response queries.\n\nAllows you to specify programs that might query a\ndatabase, talk to stdio, etc., without ever involving IO\nor opening the door to arbitrary IO.  Write a potentially\npure computation describing prompting interactions, etc.,\nwithout having your type actually do any IO or involve\nitself with IO or any effectful context.\n\nUseful as a source of \"things from IO\", without ever\nactually involving IO or arbitrary IO itself; only\nexecuting a specific subset of IO (or State, etc.) that\nyou yourself, the caller, specifies explicitly.  Safer\nand more meaningful type.\n\nFor more information and instructions on usage with\nexamples, see <https://github.com/mstksg/prompt> and the README.\n\nNot quite related to the /MonadPrompt/ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          ];
        };
      };
    }