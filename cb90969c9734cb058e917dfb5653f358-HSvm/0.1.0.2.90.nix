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
        name = "HSvm";
        version = "0.1.0.2.90";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Paolo Losi, 2017 Pavel Ryzhov";
      maintainer = "Paolo Losi <paolo.losi@gmail.com>";
      author = "Paolo Losi <paolo.losi@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell Bindings for libsvm";
      description = "";
      buildType = "Simple";
    };
    components = {
      "HSvm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
        libs = [ (pkgs.stdc++) ];
      };
    };
  }