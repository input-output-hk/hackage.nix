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
        name = "primesieve";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 HE, Tao";
      maintainer = "sighingnow@gmail.com";
      author = "HE, Tao";
      homepage = "https://github.com/sighingnow/computations/tree/master/primesieve#readme";
      url = "";
      synopsis = "FFI bindings for the primesieve library.";
      description = "FFI bindings for the primesieve library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.foundation)
        ];
      };
      exes = {
        "prime-count" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.foundation)
            (hsPkgs.primesieve)
          ];
          libs = [ (pkgs."primesieve") ];
        };
        "prime-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.foundation)
            (hsPkgs.primesieve)
          ];
          libs = [ (pkgs."primesieve") ];
        };
      };
    };
  }