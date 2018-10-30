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
        name = "hopfli";
        version = "0.2.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ananthakumaran@gmail.com";
      author = "Anantha Kumaran";
      homepage = "https://github.com/ananthakumaran/hopfli";
      url = "";
      synopsis = "zlib compatible compression using Zopfli Compression Algorithm";
      description = "Hopfli provides a pure interface to compress data using Zopfli algorithm.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.zlib)
            (hsPkgs.QuickCheck)
            (hsPkgs.hopfli)
          ];
        };
      };
    };
  }