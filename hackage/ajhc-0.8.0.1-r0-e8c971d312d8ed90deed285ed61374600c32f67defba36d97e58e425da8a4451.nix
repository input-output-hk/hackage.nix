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
        name = "ajhc";
        version = "0.8.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "John Meacham <john@repetae.net>";
      homepage = "http://ajhc.masterq.net/";
      url = "";
      synopsis = "Haskell compiler that produce binary through C language";
      description = "The jhc is a haskell compiler which aims to produce the most efficient\nprograms possible via whole program analysis and other optimizations.\n\nThe jhc is very minimalist in that it does not have a precompiled run time\nsystem, but rather generates what is needed as part of the compilation\nprocess. However, back ends do have specific run-time representations of\ndata, which can be affected by things like the choice of garbage collector.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ajhc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HsSyck)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.regex-compat)
            (hsPkgs.syb)
            (hsPkgs.temporary)
            (hsPkgs.utf8-string)
            (hsPkgs.zlib)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }