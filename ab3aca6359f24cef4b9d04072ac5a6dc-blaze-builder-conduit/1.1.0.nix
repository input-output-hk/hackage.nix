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
      specVersion = "1.8";
      identifier = {
        name = "blaze-builder-conduit";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Convert streams of builders to streams of bytestrings. (deprecated)";
      description = "Convert streams of builders to streams of bytestrings.";
      buildType = "Simple";
    };
    components = {
      "blaze-builder-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
        ];
      };
    };
  }