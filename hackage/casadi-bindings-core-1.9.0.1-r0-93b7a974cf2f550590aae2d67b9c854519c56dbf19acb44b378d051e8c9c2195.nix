{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "casadi-bindings-core";
        version = "1.9.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "low level bindings to casadi-core";
      description = "see http://hackage.haskell.org/package/casadi-bindings for instructions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.casadi-bindings-internal)
        ];
        libs = [ (pkgs."stdc++") ];
        pkgconfig = [
          (pkgconfPkgs.casadi_core)
        ];
      };
    };
  }