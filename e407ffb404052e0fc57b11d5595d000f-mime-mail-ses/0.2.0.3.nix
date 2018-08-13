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
      specVersion = "1.6";
      identifier = {
        name = "mime-mail-ses";
        version = "0.2.0.3";
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
          (hsPkgs.crypto-api)
          (hsPkgs.cereal)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.http-conduit)
          (hsPkgs.mime-mail)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
        ];
      };
    };
  }