{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mime-mail-ses";
        version = "0.2.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/mime-mail";
      url = "";
      synopsis = "Send mime-mail messages via Amazon SES";
      description = "";
      buildType = "Simple";
    };
    components = {
      "mime-mail-ses" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.http-client)
          (hsPkgs.http-client-conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.mime-mail)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.cryptohash)
          (hsPkgs.byteable)
        ];
      };
    };
  }