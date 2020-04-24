{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-conduit"; version = "0.1.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/irc-conduit";
      url = "";
      synopsis = "Streaming IRC message library using conduits.";
      description = "IRC messages consist of an optional identifying prefix, a command\nname, and a list of arguments. The <http://hackage.haskell.org/package/irc irc>\npackage provides a low-level decoding and encoding scheme for\nmessages in terms of ByteStrings, but using this relies on matching\nnames of commands as strings, and unpacking this decoded structure\nyourself. This package takes it a little further, providing an ADT\nfor IRC messages and sources, and conduits which attempt to decode\nand encode messages appropriately.\n\nIn addition to providing conduits for automatically handling\nstreaming messages, there are also helper functions for connecting\nto an IRC server and hooking up conduits to the socket.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."irc" or ((hsPkgs.pkgs-errors).buildDepError "irc"))
          (hsPkgs."irc-ctcp" or ((hsPkgs.pkgs-errors).buildDepError "irc-ctcp"))
          (hsPkgs."network-conduit-tls" or ((hsPkgs.pkgs-errors).buildDepError "network-conduit-tls"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      };
    }