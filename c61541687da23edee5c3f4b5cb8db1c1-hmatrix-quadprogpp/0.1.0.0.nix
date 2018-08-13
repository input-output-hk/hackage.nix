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
      specVersion = "1.8";
      identifier = {
        name = "hmatrix-quadprogpp";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Lang <me@alang.ca>";
      author = "Alex Lang, Takano Akio";
      homepage = "";
      url = "";
      synopsis = "Bindings to QuadProg++";
      description = "Bindings to QuadProg++, a C++ library for quadratic programming.\n<http://sourceforge.net/projects/quadprog/>";
      buildType = "Simple";
    };
    components = {
      "hmatrix-quadprogpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.hmatrix)
        ];
        libs = [
          (pkgs."QuadProgpp")
          (pkgs."stdc++")
        ];
      };
    };
  }