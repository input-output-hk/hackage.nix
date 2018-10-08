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
        name = "validity-text";
        version = "0.3.1.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for text";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "validity-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.validity)
        ];
      };
    };
  }