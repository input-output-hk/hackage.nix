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
        name = "hstats";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Marshall Beddoe";
      maintainer = "mbeddoe@<nospam>gmail.com";
      author = "Marshall Beddoe";
      homepage = "http://github.com/unmarshal/hstats/";
      url = "";
      synopsis = "Statistical Computing in Haskell";
      description = "A library of commonly used statistical functions";
      buildType = "Simple";
    };
    components = {
      "hstats" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }