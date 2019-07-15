{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stratux-demo"; version = "0.0.12"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://gitlab.com/stratux/stratux-demo";
      url = "";
      synopsis = "A demonstration of the stratux library.";
      description = "A demonstration of the stratux library <http://stratux.me/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.stratux)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.text)
          ];
        };
      exes = {
        "stratux-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.network-uri)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stratux)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.stratux-demo)
            ];
          };
        };
      };
    }