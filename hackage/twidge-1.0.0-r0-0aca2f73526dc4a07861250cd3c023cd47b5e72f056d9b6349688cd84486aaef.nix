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
    flags = { withbitly = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "twidge"; version = "1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/twidge";
      url = "";
      synopsis = "Unix Command-Line Twitter and Identica Client";
      description = "twidge is a client for microblogging sites such as Twitter and\nIdentica (identi.ca). Microblogging sites let you post short\none-paragraph updates, follow the updates that your friends post, and\ninteract with everyone in the site in a conversation style.\n\ntwidge is a client to make working with microblogging sites faster\nand easier. It is extremely versatile, and can be customized to work\nthe way you want to work, and combined with other tools to do just\nabout anything.\n\ntwidge can be used quite nicely interactively from the shell. It is\nuseful directly as-is, and with simple shell aliases can make a\nhighly efficient system to do exactly what you want. It is perfectly\ncapable of being your only client for microblogging.\n\ntwidge also can be used in an automated way, via cron(1), or it can\neven integrate with your email system.\n\nA full list of twidge features, along with numerous suggestions on\nhow to use it, can be found at the twidge website at\nhttp://software.complete.org/twidge.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "twidge" = {
          depends = [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."hoauth" or (buildDepError "hoauth"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."HSH" or (buildDepError "HSH"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."curl" or (buildDepError "curl"))
            ] ++ (pkgs.lib).optional (flags.withbitly) (hsPkgs."Bitly" or (buildDepError "Bitly"));
          };
        };
      };
    }