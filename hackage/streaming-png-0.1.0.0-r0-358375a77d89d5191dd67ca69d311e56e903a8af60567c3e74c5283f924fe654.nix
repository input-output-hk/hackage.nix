{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { build-demo = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming-png";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Bradley Hardy 2015";
      maintainer = "bradleyhardy@live.com";
      author = "Bradley Hardy";
      homepage = "http://github.com/bch29/streaming-png#readme";
      url = "";
      synopsis = "Perfectly streaming PNG image decoding";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.JuicyPixels)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.streaming-commons)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "streaming-png-demo" = {
          depends = pkgs.lib.optionals (flags.build-demo) [
            (hsPkgs.JuicyPixels)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.resourcet)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-png)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }