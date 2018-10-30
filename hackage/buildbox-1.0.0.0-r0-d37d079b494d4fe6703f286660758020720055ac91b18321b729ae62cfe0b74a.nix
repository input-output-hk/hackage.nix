{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "buildbox";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier";
      homepage = "http://code.haskell.org/~benl/code/buildbox-head";
      url = "";
      synopsis = "Rehackable components for writing buildbots and test harnesses.";
      description = "Rehackable components for writing buildbots and test harnesses. Includes functions\nfor checking the host platform, running tests, capturing output, handling errors,\ncomparing runtimes against a baseline, sending mail, running events to a schedule etc.\nSome of these functions are just wrappers around shell commands, so be careful about passing\nthem weirdly formed arguments.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
        ];
      };
    };
  }