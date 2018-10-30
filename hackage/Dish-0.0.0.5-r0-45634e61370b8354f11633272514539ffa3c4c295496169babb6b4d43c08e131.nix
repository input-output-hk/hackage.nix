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
        name = "Dish";
        version = "0.0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Courtney Robinson";
      maintainer = "oss@crlog.info";
      author = "Courtney Robinson";
      homepage = "http://github.com/zcourts/Dish";
      url = "";
      synopsis = "Hash modules (currently Murmur3)";
      description = "A group of Hash related utilities (currently wraps MurmurHash3 C implementation)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "Dish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Dish)
          ];
        };
      };
    };
  }