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
    flags = { linuxstatic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "darkplaces-rcon-util"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/darkplaces-rcon";
      url = "";
      synopsis = "Darplaces rcon utility";
      description = "This is implementation of rcon shell for darkplaces engine.\n\nFeatures :\n\n* Simple and easy CLI interface\n\n* Supports both ipv4 and ipv6 protocols\n\n* Bookmarks and default options\n\n* Saves command history to file\n\n* Internal commands and smart autocomplete for them\n\n* Suspend support with Ctrl+z\n\nFor more info visit <https://github.com/bacher09/darkplaces-rcon/blob/master/darkplaces-rcon-util/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."HostAndPort" or (buildDepError "HostAndPort"))
          (hsPkgs."darkplaces-text" or (buildDepError "darkplaces-text"))
          (hsPkgs."darkplaces-rcon" or (buildDepError "darkplaces-rcon"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          ];
        buildable = true;
        };
      exes = {
        "drcon" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."darkplaces-text" or (buildDepError "darkplaces-text"))
            (hsPkgs."darkplaces-rcon" or (buildDepError "darkplaces-rcon"))
            (hsPkgs."darkplaces-rcon-util" or (buildDepError "darkplaces-rcon-util"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rcon-util-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."darkplaces-rcon-util" or (buildDepError "darkplaces-rcon-util"))
            (hsPkgs."darkplaces-rcon" or (buildDepError "darkplaces-rcon"))
            (hsPkgs."darkplaces-text" or (buildDepError "darkplaces-text"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }