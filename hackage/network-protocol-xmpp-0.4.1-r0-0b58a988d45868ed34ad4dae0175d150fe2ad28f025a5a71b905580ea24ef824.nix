{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-protocol-xmpp"; version = "0.4.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>, Stephan Maka <stephan@spaceboyz.net>";
      homepage = "https://john-millikin.com/software/haskell-xmpp/";
      url = "";
      synopsis = "Client library for the XMPP protocol.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."gnuidn" or ((hsPkgs.pkgs-errors).buildDepError "gnuidn"))
          (hsPkgs."gnutls" or ((hsPkgs.pkgs-errors).buildDepError "gnutls"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."gsasl" or ((hsPkgs.pkgs-errors).buildDepError "gsasl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."libxml-sax" or ((hsPkgs.pkgs-errors).buildDepError "libxml-sax"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          ];
        buildable = true;
        };
      };
    }