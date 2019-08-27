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
      specVersion = "1.6";
      identifier = { name = "rfc3339"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Hugo Daniel Gomes";
      maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parse and display time according to RFC3339";
      description = "\nParse and display time according to RFC3339:\n<http://www.ietf.org/rfc/rfc3339.txt>\n\nThis package defines a type class to parse and read RFC 3339 from different\ndata types.\nRight now there is only support for reading and showing String\n\nExample of usage:\n>\n> import Data.Time.LocalTime\n>\n> showTime :: IO String\n> showTime = getZonedTime >>= return . showRFC3339\n>\n> example1 = \"1985-04-12T23:20:50.52Z\"\n> example2 = \"1996-12-19T16:39:57-08:00\"\n> example3 = \"1990-12-31T23:59:60Z\"\n> example4 = \"1990-12-31T15:59:60-08:00\"\n> example5 = \"1937-01-01T12:00:27.87+00:20\"\n> examples = [example1,example2,example3,example4,example5]\n>\n> readAll = map readRFC3339 examples\n>\n\nFor more information please read the documentation of the module\nbellow.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        };
      };
    }