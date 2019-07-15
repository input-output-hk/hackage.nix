{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stratux-websockets"; version = "0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/stratux-websockets";
      url = "";
      synopsis = "A library for using websockets with stratux";
      description = "A library for using websockets with stratux <http://stratux.me/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stratux-types)
          (hsPkgs.websockets)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.either)
          (hsPkgs.text)
          (hsPkgs.network)
          ];
        };
      };
    }