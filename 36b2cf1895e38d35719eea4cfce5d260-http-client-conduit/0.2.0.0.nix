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
        name = "http-client-conduit";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "Frontend support for using http-client with conduit";
      description = "Intended for use by higher-level libraries, such as http-conduit.";
      buildType = "Simple";
    };
    components = {
      "http-client-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
        ];
      };
    };
  }