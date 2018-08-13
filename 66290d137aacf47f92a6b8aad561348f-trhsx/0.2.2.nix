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
      specVersion = "0";
      identifier = {
        name = "trhsx";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "Deprecated";
      description = "This tool is now part of the hsx package, and should be considered deprecated as a stand-alone package.";
      buildType = "Simple";
    };
    components = { "trhsx" = {}; };
  }