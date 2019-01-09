{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "shake"; version = "0.13.2"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/shake";
      url = "";
      synopsis = "Build system library, like Make, but more accurate dependencies.";
      description = "Shake is a Haskell library for writing build systems - designed as a\nreplacement for @make@. See \"Development.Shake\" for an introduction,\nincluding an example. Further examples are included in the Cabal tarball,\nunder the @Examples@ directory. The homepage contains links to a user\nmanual, an academic paper and further information:\n<https://github.com/ndmitchell/shake>\n\nTo use Shake the user writes a Haskell program\nthat imports \"Development.Shake\", defines some build rules, and calls\nthe 'Development.Shake.shakeArgs' function. Thanks to do notation and infix\noperators, a simple Shake build system\nis not too dissimilar from a simple Makefile. However, as build systems\nget more complex, Shake is able to take advantage of the excellent\nabstraction facilities offered by Haskell and easily support much larger\nprojects. The Shake library provides all the standard features available in other\nbuild systems, including automatic parallelism and minimal rebuilds.\nShake also provides more accurate dependency tracking, including seamless\nsupport for generated files, and dependencies on system information\n(e.g. compiler version).";
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
          (hsPkgs.utf8-string)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          ] ++ (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optional (!system.isWindows) (hsPkgs.unix));
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
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            ] ++ (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optional (!system.isWindows) (hsPkgs.unix));
          };
        };
      tests = {
        "shake-test" = {
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
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optional (!system.isWindows) (hsPkgs.unix));
          };
        };
      };
    }