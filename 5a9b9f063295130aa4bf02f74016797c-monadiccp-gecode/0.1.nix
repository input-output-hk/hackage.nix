{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monadiccp-gecode";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jrt@informatik.uni-kiel.de";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://users.ugent.be/~tschrijv/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Gecode extension for the Monadic Constraint Programming Framework (code generator and runtime solver backend)";
      buildType = "Simple";
    };
    components = {
      "monadiccp-gecode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.monadiccp)
        ];
        libs = [
          (pkgs.gecodesupport)
          (pkgs.gecodeset)
          (pkgs.gecodeint)
          (pkgs.gecodekernel)
          (pkgs.gecodesearch)
        ];
        frameworks = [ (pkgs.gecode) ];
      };
    };
  }