{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-protocol-xmpp"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>\nStephan Maka  <stephan@spaceboyz.net>";
      homepage = "";
      url = "";
      synopsis = "Client <-> Server communication over XMPP";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."libxml-sax" or ((hsPkgs.pkgs-errors).buildDepError "libxml-sax"))
          (hsPkgs."hsgnutls" or ((hsPkgs.pkgs-errors).buildDepError "hsgnutls"))
          (hsPkgs."gsasl" or ((hsPkgs.pkgs-errors).buildDepError "gsasl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          ];
        buildable = true;
        };
      };
    }