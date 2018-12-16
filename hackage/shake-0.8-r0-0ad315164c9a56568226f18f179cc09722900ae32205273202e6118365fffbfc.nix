{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      testprog = false;
      portable = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shake";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2013";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/shake/";
      url = "";
      synopsis = "Build system library, like Make, but more accurate dependencies.";
      description = "Shake is a Haskell library for writing build systems - designed as a\nreplacement for @make@. See \"Development.Shake\" for an introduction,\nincluding an example. Further examples are included in the Cabal tarball,\nunder the @Examples@ directory.\n\nTo use Shake the user writes a Haskell program\nthat imports \"Development.Shake\", defines some build rules, and calls\nthe 'Development.Shake.shake' function. Thanks to do notation and infix\noperators, a simple Shake build system\nis not too dissimilar from a simple Makefile. However, as build systems\nget more complex, Shake is able to take advantage of the excellent\nabstraction facilities offered by Haskell and easily support much larger\nprojects.\n\nThe Shake library provides all the standard features available in other\nbuild systems, including automatic parallelism and minimal rebuilds.\nShake provides highly accurate dependency tracking, including seamless\nsupport for generated files, and dependencies on system information\n(i.e. compiler version). Shake can produce profile reports, indicating\nwhich files and take longest to build, and providing an analysis of the\nparallelism.\n\nThe theory behind Shake is described in an ICFP 2012 paper,\nShake Before Building -- Replacing Make with Haskell\n<http://community.haskell.org/~ndm/downloads/paper-shake_before_building-10_sep_2012.pdf>.\nThe associated talk forms a short overview of Shake\n<http://www.youtube.com/watch?v=xYCPpXVlqFM>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
        ] ++ pkgs.lib.optionals (!flags.portable) (pkgs.lib.optional (!system.isWindows) (hsPkgs.unix));
      };
      exes = {
        "shake" = {
          depends = [
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
          ] ++ pkgs.lib.optionals (!flags.portable) (pkgs.lib.optional (!system.isWindows) (hsPkgs.unix));
        };
      };
    };
  }