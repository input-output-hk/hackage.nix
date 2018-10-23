{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haskell-modbus";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://www.github.com/jhickner/haskell-modbus";
      url = "";
      synopsis = "A cereal-based parser for the Modbus protocol";
      description = "A cereal-based parser for the Modbus protocol";
      buildType = "Simple";
    };
    components = {
      "haskell-modbus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
        ];
      };
    };
  }