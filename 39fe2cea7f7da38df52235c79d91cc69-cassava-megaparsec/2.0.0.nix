{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "cassava-megaparsec";
        version = "2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.org>";
      author = "Mark Karpov <markkarpov92@gmail.org>";
      homepage = "https://github.com/stackbuilders/cassava-megaparsec";
      url = "";
      synopsis = "Megaparsec parser of CSV files that plays nicely with Cassava";
      description = "Megaparsec parser of CSV files that plays nicely with Cassava.";
      buildType = "Simple";
    };
    components = {
      "cassava-megaparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.megaparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.cassava-megaparsec)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }