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
      identifier = { name = "route-generator"; version = "0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/route-generator";
      url = "";
      synopsis = "Utility to generate routes for use with yesod-routes";
      description = "Most of the defacto Haskell web routing libraries are either linear\nin complexity, or require lots of extra extensions, like Template\nHaskell.\n\nLuckily, yesod-routes has Yesod.Routes.Dispatch, which is a very clean,\nefficient, and extension-free router.  Writing routes out in code can,\nhowever, be quite verbose.  This utility is a code generator to produce\nroutes compatible with Yesod.Routes.Dispatch from a nice input format.\n\nExample:\n\n> GET /       => home\n> GET /post/: => showPost\n> PUT /*      => updateSomething\n\n> ./routeGenerator -r -m SomeModule routes.txt\n\nWill generate routes that map the correct HTTP verb (which you should\npass as a prepended \"path segment\" to your Dispatch) and path to\nfunctions imported from the module specified in the second parameter.\n\nA colon matches any path segment, and passes the matched segment\nthrough to the specified function, passing each match segment in order.\nThe expected type of the segment is inferred from the type of the\nfunction.  If the segment cannot be parsed as that type, the path does\nnot match.  Parsing is done with Web.PathPieces.fromPathPiece.\n\nAn asterisk at the end of the path causes rhHasMulti to be set to True,\nmeaning that any path segments after what has been specified will be\nallowed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "routeGenerator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."yesod-routes" or (buildDepError "yesod-routes"))
            ];
          buildable = true;
          };
        };
      };
    }