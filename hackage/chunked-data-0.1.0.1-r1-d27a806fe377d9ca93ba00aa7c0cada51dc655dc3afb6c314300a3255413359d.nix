{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "chunked-data";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/chunked-data";
      url = "";
      synopsis = "Typeclasses for dealing with various chunked data representations";
      description = "Originally present in classy-prelude.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.mono-traversable)
          (hsPkgs.text)
          (hsPkgs.system-filepath)
          (hsPkgs.blaze-builder)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.semigroups)
        ];
      };
    };
  }