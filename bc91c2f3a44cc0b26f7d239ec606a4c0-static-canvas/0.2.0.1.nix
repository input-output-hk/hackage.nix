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
        name = "static-canvas";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Jeffrey Rosenbluth";
      maintainer = "jeffrey.rosenbluth@gmail.com";
      author = "Jeffrey Rosenbluth";
      homepage = "https://github.com/jeffreyrosenbluth/static-canvas";
      url = "";
      synopsis = "DSL to generate HTML5 Canvas javascript.";
      description = "A simple DSL for writing HTML5 Canvas in haskell and converting it\nto Javascript. By static we mean non-interactive, so the parts of\nthe Canvas API that need to query the browser for run time information\nlike `isPointInPath(x, y)` are not included. This turns out to be\na surprisingly small part of HTML5 Canvas.";
      buildType = "Simple";
    };
    components = {
      "static-canvas" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.text)
          (hsPkgs.double-conversion)
        ];
      };
    };
  }