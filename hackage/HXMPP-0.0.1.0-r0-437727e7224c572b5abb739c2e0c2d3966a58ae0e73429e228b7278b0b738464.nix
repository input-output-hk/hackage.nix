{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HXMPP"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/sub-projects/hxmpp/";
      url = "http://www.pontarius.org/releases/hxmpp-0.0.1.0.tar.gz";
      synopsis = "A (prototyped) easy to use XMPP library";
      description = "A work in progress of an implementation of RFC 3920: XMPP\nCore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HLogger" or ((hsPkgs.pkgs-errors).buildDepError "HLogger"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."xml-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "xml-enumerator"))
          ];
        buildable = true;
        };
      exes = {
        "hxmpp-0.0.1.0-test" = {
          depends = [
            (hsPkgs."HLogger" or ((hsPkgs.pkgs-errors).buildDepError "HLogger"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."xml-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "xml-enumerator"))
            ];
          buildable = true;
          };
        };
      };
    }