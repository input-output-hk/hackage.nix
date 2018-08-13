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
        name = "pthread";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 EURL Tweag\n2017 LeapYear Technologies.";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/pthread";
      url = "";
      synopsis = "Bindings for the pthread library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "pthread" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."pthread") ];
      };
    };
  }