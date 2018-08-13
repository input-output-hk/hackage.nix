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
        name = "Blueprint";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Gregory Crosswhite";
      maintainer = "gcross@phys.washington.edu";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/Blueprint";
      url = "";
      synopsis = "Preview of a new build system.";
      description = "Preview of a new build system.";
      buildType = "Custom";
    };
    components = {
      "Blueprint" = {};
    };
  }