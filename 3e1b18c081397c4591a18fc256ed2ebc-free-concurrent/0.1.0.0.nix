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
        name = "free-concurrent";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-free-concurrent";
      url = "";
      synopsis = "Free monads suitable for concurrent computation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "free-concurrent" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }