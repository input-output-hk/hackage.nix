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
      specVersion = "1.2";
      identifier = {
        name = "Befunge93";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2010/05/befunge-93-interpreter-on-hackage";
      url = "";
      synopsis = "An interpreter for the Befunge-93 Programming Language";
      description = "An interpreter for the '93 spec of the esoteric programming language Befunge";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Befunge93" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.random)
          ];
        };
      };
    };
  }