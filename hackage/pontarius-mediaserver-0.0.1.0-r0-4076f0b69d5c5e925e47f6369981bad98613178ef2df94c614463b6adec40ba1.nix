{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pontarius-mediaserver"; version = "0.0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © Jon Kristensen, 2010-2011";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/projects/pontarius-mediaserver/";
      url = "http://www.pontarius.org/releases/pontarius-mediaserver-0.0.1.0.tar.gz";
      synopsis = "Extended Personal Media Network (XPMN) media server";
      description = "Pontarius Media Server will be a free and privacy-aware\nExtended Personal Media Network (XPMN) media server.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pontarius-mediaserver-test" = {
          depends = [
            (hsPkgs."HLogger" or ((hsPkgs.pkgs-errors).buildDepError "HLogger"))
            (hsPkgs."pontarius-xmpp" or ((hsPkgs.pkgs-errors).buildDepError "pontarius-xmpp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
            ];
          buildable = true;
          };
        };
      };
    }