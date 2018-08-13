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
      specVersion = "1.6";
      identifier = {
        name = "richreports";
        version = "0.0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Integrated pretty-printing and error/static analysis reporting.";
      description = "Integrated pretty-printing and error/static analysis reporting.";
      buildType = "Simple";
    };
    components = {
      "richreports" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ascetic)
          (hsPkgs.MissingH)
        ];
      };
    };
  }