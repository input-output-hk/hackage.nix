{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "oi";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nobsun@sampou.org";
      author = "Nobuo Yamashita";
      homepage = "";
      url = "";
      synopsis = "Library for purely functional lazy interactions with the outer world.";
      description = "This package implements a data structure and operations on it for writing interactive program with no imperative flavor of IO monads.\n\n[N.B.] At the moment, APIs maybe change.";
      buildType = "Simple";
    };
    components = {
      "oi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.comonad)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "oi-cats" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.oi)
          ];
        };
        "oi-cats2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.oi)
          ];
        };
        "oi-echo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.oi)
          ];
        };
        "oi-morec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.oi)
          ];
        };
        "oi-recdircs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.oi)
          ];
        };
        "oi-talk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.oi)
          ];
        };
      };
    };
  }