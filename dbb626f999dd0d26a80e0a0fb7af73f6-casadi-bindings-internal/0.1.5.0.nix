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
        name = "casadi-bindings-internal";
        version = "0.1.5.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2016 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "http://github.com/ghorn/casadi-bindings";
      url = "";
      synopsis = "low level bindings to CasADi";
      description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
      buildType = "Simple";
    };
    components = {
      "casadi-bindings-internal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
        ];
        libs = [
          (pkgs."stdc++")
          (pkgs."casadi")
        ];
      };
    };
  }