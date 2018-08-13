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
        name = "xtest";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Thin FFI bindings to X11 XTest library";
      description = "This package provides thin bindings for X11 XTest library.\nFor more info, see XTest documentation.";
      buildType = "Simple";
    };
    components = {
      "xtest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
        ];
        libs = [ (pkgs."Xtst") ];
      };
    };
  }