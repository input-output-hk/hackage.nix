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
        name = "xtest";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Thin FFI bindings to X11 XTest library";
      description = "This package provides bindings to some functions from X11 XTest\nextension client library (-lXtst).";
      buildType = "Simple";
    };
    components = {
      "xtest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
        ];
        libs = [ (pkgs.Xtst) ];
      };
    };
  }