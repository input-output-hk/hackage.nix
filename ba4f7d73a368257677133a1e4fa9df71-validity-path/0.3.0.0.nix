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
        name = "validity-path";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for Path";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "validity-path" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.path)
          (hsPkgs.validity)
        ];
      };
      tests = {
        "validity-path-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec)
            (hsPkgs.path)
            (hsPkgs.validity)
            (hsPkgs.validity-path)
          ];
        };
      };
    };
  }