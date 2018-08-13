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
        name = "blockhash";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/blockhash#readme";
      url = "";
      synopsis = "Blockhash perceptual image hash algorithm";
      description = "This is a perceptual image hash calculation tool based on algorithm descibed\nin Block Mean Value Based Image Perceptual Hashing by Bian Yang, Fan Gu and\nXiamu Niu.";
      buildType = "Simple";
    };
    components = {
      "blockhash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
      exes = {
        "blockhash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blockhash)
            (hsPkgs.JuicyPixels)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "blockhash-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blockhash)
          ];
        };
      };
    };
  }