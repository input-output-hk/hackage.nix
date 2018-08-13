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
        name = "smallpt-hs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vo Minh Thu <noteed@gmail.com>";
      author = "Vo Minh Thu <noteed@gmail.com>";
      homepage = "http://github.com/noteed/smallpt-hs";
      url = "";
      synopsis = "A Haskell port of the smallpt path tracer.";
      description = "A Haskell port of smallpt. smallpt is a global\nillumination path tracer written in 99 lines of C++.\nThe Haskell port is also written in 99 lines. Please\nsee the Homepage for more information, included\neasier to read code waiting for your contribution.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "smallpt-hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }