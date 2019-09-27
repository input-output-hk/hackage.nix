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
      identifier = { name = "irc-ctcp"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/yukibot";
      url = "";
      synopsis = "A CTCP encoding and decoding library for IRC clients.";
      description = "CTCP (Client To Client Protocol) is a way of sending arbitrary data\nover an IRC network, which may include bytes not allowed in standard\nIRC messages. CTCPs are sent as a PRIVMSG or NOTICE, where the first\nand last characters as @\\\\001@ (SOH), and special bytes are escaped\nby encoding them into a two-byte sequence beginning with @\\\\020@\n(DLE). CTCPs consist of command name (typically in upper-case)\nfollowed by list of space-separated arguments, which may be empty.\n\nOne use of CTCPs supported by the vast majority of IRC clients today\nis the ACTION command, typically invoked with /me. For example, if\nthe user @foo@ in the channel @#bar@ were to issue\n\n> /me dances\n\neveryone in the channel would receive the message\n\n> :foo PRIVMSG #bar :\\001ACTION dances\\001\n\nOther common uses of CTCP include requesting the name and version of\na user's IRC client, their local time, determining ping times, and\ninitiating file transfers (DCC).\n\nCharacters are escaped as follows:\n\n[@\\\\000@ (NUL)] @\\\\020 \\\\060@ (\"0\")\n\n[@\\\\012@ (NL)]  @\\\\020 \\\\156@ (\"n\")\n\n[@\\\\015@ (CR)]  @\\\\020 \\\\162@ (\"r\")\n\n[@\\\\020@ (DLE)] @\\\\020 \\\\020@\n\nAll other appearences of the escape character are errors, and are\ndropped.\n\nSee <http://www.irchelp.org/irchelp/rfc/ctcpspec.html> for more\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }