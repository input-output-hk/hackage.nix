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
        name = "implicit-logging";
        version = "0.2.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "rev.null@gmail.com";
      author = "Rev. Johnny Healey";
      homepage = "https://github.com/revnull/implicit-logging";
      url = "";
      synopsis = "A logging framework built around implicit parameters.";
      description = "This package provides a simple framework for adding logging to a program.\nIt supports customizable line formatting and user-provided log contexts.\nLog configuration information is passed around via implicit parameters.";
      buildType = "Simple";
    };
    components = {
      "implicit-logging" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }