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
        name = "fay-simplejson";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Li Meng Jun";
      maintainer = "lmjubuntu@gmail.com";
      author = "Li Meng Jun";
      homepage = "https://github.com/Lupino/fay-simplejson";
      url = "";
      synopsis = "SimpleJSON library for Fay.";
      description = "SimpleJSON library for Fay.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.fay-base)
        ];
      };
    };
  }