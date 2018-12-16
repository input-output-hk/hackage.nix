{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev-wall-werror = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bytestring-encodings";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "chessai (c) 2018";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "";
      url = "";
      synopsis = "checks to see if a given bytestring adheres to a certain encoding";
      description = "'Data.ByteString.X' modules provide simple, efficient function 'isX :: ByteString -> Bool'\nwhich returns 'True' if a given ByteString adheres to a certain encoding X,\nand 'False' otherwise.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-encodings)
            (hsPkgs.hedgehog)
          ];
        };
      };
      benchmarks = {
        "microbenchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-encodings)
            (hsPkgs.gauge)
            (hsPkgs.text)
          ];
        };
      };
    };
  }