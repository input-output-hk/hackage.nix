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
        name = "Concurrent-Cache";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcus@conditionraise.se";
      author = "Marcus Ofenhed";
      homepage = "";
      url = "";
      synopsis = "A Cached variable for IO functions.";
      description = "This package allows for caching IO functions, either on a\ntimeout or designed to only fetch once.";
      buildType = "Simple";
    };
    components = {
      "Concurrent-Cache" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }