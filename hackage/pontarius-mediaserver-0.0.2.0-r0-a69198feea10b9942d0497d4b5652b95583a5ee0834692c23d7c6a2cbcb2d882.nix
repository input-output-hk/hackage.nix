{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pontarius-mediaserver"; version = "0.0.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © Jon Kristensen, 2010-2011";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/projects/pontarius-mediaserver/";
      url = "http://www.pontarius.org/releases/pontarius-mediaserver-0.0.2.0.tar.gz";
      synopsis = "Extended Personal Media Network (XPMN) media server";
      description = "Pontarius Media Server will be a free and privacy-aware\nExtended Personal Media Network (XPMN) media server.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pontarius-mediaserver-test" = {
          depends = [
            (hsPkgs.hlogger)
            (hsPkgs.pontarius-xmpp)
            (hsPkgs.pontarius-xpmn)
            (hsPkgs.base)
            (hsPkgs.xml-types)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            ];
          };
        };
      };
    }