{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "network-protocol-xmpp"; version = "0.4.9"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "John Millikin <jmillikin@gmail.com>, Stephan Maka <stephan@spaceboyz.net>";
      homepage = "https://git.sr.ht/~singpolyma/network-protocol-xmpp";
      url = "";
      synopsis = "Client library for the XMPP protocol.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."gnuidn" or ((hsPkgs.pkgs-errors).buildDepError "gnuidn"))
          (hsPkgs."gnutls" or ((hsPkgs.pkgs-errors).buildDepError "gnutls"))
          (hsPkgs."gsasl" or ((hsPkgs.pkgs-errors).buildDepError "gsasl"))
          (hsPkgs."libxml-sax" or ((hsPkgs.pkgs-errors).buildDepError "libxml-sax"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          ];
        buildable = true;
        };
      };
    }