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
      specVersion = "0";
      identifier = {
        name = "cmath";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cmath";
      url = "";
      synopsis = "A binding to the standard C math library";
      description = "A binding to the standard C math library";
      buildType = "Simple";
    };
    components = {
      "cmath" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.m) ];
      };
    };
  }