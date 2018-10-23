{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambdacube-edsl";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://lambdacube3d.wordpress.com/";
      url = "";
      synopsis = "LambdaCube 3D EDSL definition";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lambdacube-edsl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.vector)
          (hsPkgs.ghc-prim)
          (hsPkgs.lambdacube-core)
        ];
      };
    };
  }