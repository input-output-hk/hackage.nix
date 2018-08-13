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
        name = "buildbox";
        version = "1.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier";
      homepage = "http://code.haskell.org/~benl/code/buildbox-head";
      url = "";
      synopsis = "Rehackable components for writing buildbots and test harnesses.";
      description = "Includes functions for checking the host platform, running tests, capturing output,\nhandling errors, comparing runtimes against a baseline, sending mail, running events to a schedule etc.\nSome of these functions are just wrappers around shell commands, so be careful about passing\nthem weirdly formed arguments.";
      buildType = "Simple";
    };
    components = {
      "buildbox" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.unix)
          (hsPkgs.pretty)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
        ];
      };
    };
  }