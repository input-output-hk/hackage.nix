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
      specVersion = "1.2";
      identifier = {
        name = "hesql";
        version = "0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer <ich@christoph-bauer.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell's embedded SQL";
      description = "hesql rewrites SQL-function to Haskell/HDBC-functions";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hesql" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.haskell-src)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.hssqlppp)
          ];
        };
      };
    };
  }