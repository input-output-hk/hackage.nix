{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hxmppc"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicolas.pouillard@gmail.com";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "Haskell XMPP (Jabber Client) Command Line Interface (CLI)";
      description = "A simple command line interface to send and receive\nmessages via XMPP";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hxmppc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-protocol-xmpp" or ((hsPkgs.pkgs-errors).buildDepError "network-protocol-xmpp"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            ];
          buildable = true;
          };
        };
      };
    }