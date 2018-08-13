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
        name = "seakale";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.feron@redspline.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "Pure SQL layer on top of other libraries";
      description = "This library allows you to write pure code doing operations on a SQL databases. It can therefore be tested by mocking the database with the package 'seakale-tests'. To run it of a specific database, you need another package such as 'seakale-postgresql'.";
      buildType = "Simple";
    };
    components = {
      "seakale" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }