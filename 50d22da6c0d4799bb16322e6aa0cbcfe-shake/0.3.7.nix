{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      testprog = false;
      portable = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shake";
        version = "0.3.7";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2012";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/shake/";
      url = "";
      synopsis = "Build system library, like Make, but more accurate dependencies.";
      description = "Shake is a Haskell library for writing build systems - designed as a\nreplacement for make. To use Shake the user writes a Haskell program\nthat imports the Shake library, defines some build rules, and calls\nshake. Thanks to do notation and infix operators, a simple Shake program\nis not too dissimilar from a simple Makefile. However, as build systems\nget more complex, Shake is able to take advantage of the excellent\nabstraction facilities offered by Haskell and easily support much larger\nprojects.\n\nThe Shake library provides all the standard features available in other\nbuild systems, including automatic parallelism and minimal rebuilds.\nShake provides highly accurate dependency tracking, including seamless\nsupport for generated files, and dependencies on system information\n(i.e. compiler version). Shake can produce profile reports, indicating\nwhich files and take longest to build, and providing an analysis of the\nparallelism.\n\nThe theory behind an old version of Shake is described in a video at\n<http://vimeo.com/15465133>, and an example is given at the top of\n\"Development.Shake\". Further examples are included in the Cabal tarball,\nunder the @Examples@ directory.";
      buildType = "Simple";
    };
    components = {
      "shake" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optionals (!_flags.portable) (pkgs.lib.optional (!system.isWindows) (hsPkgs.unix));
      };
      exes = {
        "shake" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.binary)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
          ] ++ pkgs.lib.optionals (!_flags.portable) (pkgs.lib.optional (!system.isWindows) (hsPkgs.unix));
        };
      };
    };
  }