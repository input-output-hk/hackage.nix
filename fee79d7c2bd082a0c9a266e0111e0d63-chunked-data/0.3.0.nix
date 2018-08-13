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
        name = "chunked-data";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable";
      url = "";
      synopsis = "Typeclasses for dealing with various chunked data representations";
      description = "Originally present in classy-prelude.";
      buildType = "Simple";
    };
    components = {
      "chunked-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.semigroups)
        ];
      };
    };
  }