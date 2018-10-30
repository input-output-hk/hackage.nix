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
        name = "liblinear-enumerator";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nathan Howell <nathan.d.howell@gmail.com>";
      author = "Nathan Howell <nathan.d.howell@gmail.com>";
      homepage = "http://github.com/NathanHowell/liblinear-enumerator";
      url = "";
      synopsis = "liblinear iteratee.";
      description = "High level bindings to liblinear <http://www.csie.ntu.edu.tw/~cjlin/liblinear/>.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.enumerator)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."stdc++") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }