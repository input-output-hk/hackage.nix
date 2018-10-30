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
      specVersion = "1.8";
      identifier = {
        name = "warp-dynamic";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://tanakh.jp";
      url = "";
      synopsis = "Dynamic configurable warp HTTP server";
      description = "Dynamic configurable warp HTTP server";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.dyre)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "warpd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp-dynamic)
          ];
        };
      };
    };
  }