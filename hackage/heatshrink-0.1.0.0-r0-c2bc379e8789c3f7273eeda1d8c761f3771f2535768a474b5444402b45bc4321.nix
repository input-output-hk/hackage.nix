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
        name = "heatshrink";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Thierry Bourrillon";
      maintainer = "thierry.bourrillon@fpinsight.com";
      author = "Thierry Bourrillon";
      homepage = "https://github.com/fpinsight/heatshrink#readme";
      url = "";
      synopsis = "Compression and decompression using heatshrink";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.base)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "heatshrink-test" = {
          depends = [
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.base)
            (hsPkgs.heatshrink)
            (hsPkgs.pcre-heavy)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }