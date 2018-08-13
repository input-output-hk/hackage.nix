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
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-cookie";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Al Zohali <zohl@fmap.me>";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "Authentication via encrypted cookies";
      description = "Authentication via encrypted client-side cookies,\ninspired by client-session library by Michael Snoyman and based on\nideas of the paper \"A Secure Cookie Protocol\" by Alex Liu et al.";
      buildType = "Simple";
    };
    components = {
      "servant-auth-cookie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.mtl)
            (hsPkgs.http-media)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }