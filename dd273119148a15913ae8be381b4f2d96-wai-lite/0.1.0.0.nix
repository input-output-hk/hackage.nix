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
      specVersion = "1.9.2";
      identifier = {
        name = "wai-lite";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Levy";
      homepage = "";
      url = "";
      synopsis = "A minimalist web framework for WAI web applications";
      description = "A minimalist web framework for WAI web applications";
      buildType = "Simple";
    };
    components = {
      "wai-lite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
    };
  }