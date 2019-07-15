{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stratux-http"; version = "0.0.11"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/stratux-http";
      url = "";
      synopsis = "A library for using HTTP with stratux";
      description = "A library for using HTTP with stratux <http://stratux.me/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stratux-types)
          (hsPkgs.HTTP)
          (hsPkgs.network-uri)
          (hsPkgs.aeson)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }