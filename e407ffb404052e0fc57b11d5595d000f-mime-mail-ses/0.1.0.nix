{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "mime-mail-ses";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/mime-mail-ses";
      url = "";
      synopsis = "Send mime-mail messages via Amazon SES";
      description = "";
      buildType = "Simple";
    };
    components = {
      "mime-mail-ses" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.crypto-api)
          (hsPkgs.cereal)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.http-conduit)
          (hsPkgs.mime-mail)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
        ];
      };
    };
  }