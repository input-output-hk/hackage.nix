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
      specVersion = "1.10";
      identifier = {
        name = "wavefront-obj";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Alexis Williams";
      maintainer = "sasinestro@gmail.com";
      author = "Alexis Williams";
      homepage = "https://github.com/sasinestro/wavefront-obj#readme";
      url = "";
      synopsis = "Wavefront .obj file loader";
      description = "See <https://github.com/SASinestro/wavefront-obj/blob/master/README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.linear)
        ];
      };
      tests = {
        "wavefront-obj-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.wavefront-obj)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }