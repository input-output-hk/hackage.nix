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
      identifier = { name = "wai-middleware-clacks"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/wai-middleware-clacks#readme";
      url = "";
      synopsis = "GNU Terry Pratchett - Add the X-Clacks-Overhead Header to Wai Responses.";
      description = "/\"You know they'll never really die while the Trunk is alive.\"/\n\n@wai-middleware-clacks@ is a middleware that inserts an arbitrary\n@X-Clacks-Overhead@ header into every Wai response. From\n<http://gnuterrypratchett.com GNU Terry Pratchett>:\n\n> In Terry Pratchett's Discworld series, the clacks are a series of\n> semaphore towers loosely based on the concept of the telegraph. Invented\n> by an artificer named Robert Dearheart, the towers could send messages\n> \"at the speed of light\" using standardized codes. Three of these codes\n> are of particular import:\n>\n> G: send the message on\n> N: do not log the message\n> U: turn the message around at the end of the line and send it back again\n>\n> When Dearheart's son John died due to an accident while working on a\n> clacks tower, Dearheart inserted John's name into the overhead of the\n> clacks with a \"GNU\" in front of it as a way to memorialize his son forever\n> (or for at least as long as the clacks are standing.)\n>\n>\n> Keeping the legacy of Sir Terry Pratchett alive forever. For as long as\n> his name is still passed along the Clacks, Death can't have him.\n\nPlease see the\n<https://github.com/prikhi/wai-middleware-clacks/blob/master/README.md README>\nor\n<https://hackage.haskell.org/package/wai-middleware-clacks/docs/Network-Wai-Middleware-Clacks.html module documentation>\nfor usage instructions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ];
        buildable = true;
        };
      tests = {
        "wai-middleware-clacks-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-wai" or (buildDepError "tasty-wai"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-middleware-clacks" or (buildDepError "wai-middleware-clacks"))
            ];
          buildable = true;
          };
        };
      };
    }