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
      specVersion = "1.8";
      identifier = {
        name = "simplest-sqlite";
        version = "0.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      author = "YoshikuniJujo <PAF01143@nifty.ne.jp>";
      homepage = "comming soon";
      url = "";
      synopsis = "Simplest SQLite3 binding";
      description = "yet";
      buildType = "Simple";
    };
    components = {
      "simplest-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
        libs = [ (pkgs.sqlite3) ];
      };
    };
  }