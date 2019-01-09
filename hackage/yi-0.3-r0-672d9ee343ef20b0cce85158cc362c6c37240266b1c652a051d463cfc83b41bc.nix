{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dynamic = true; vty = true; gtk = true; cocoa = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yi"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written and extensible in Haskell. The goal of Yi is\nto provide a flexible, powerful, and correct editor core which is dynamically\nscriptable in Haskell.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "yi" = {
          depends = ((([
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.unix)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.fingertree)
            (hsPkgs.regex-base)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-posix)
            ] ++ (pkgs.lib).optional (flags.dynamic) (hsPkgs.ghc)) ++ (pkgs.lib).optional (flags.vty) (hsPkgs.vty)) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs.gtk)) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs.HOC)
            (hsPkgs.HOC-AppKit)
            (hsPkgs.HOC-Foundation)
            ];
          build-tools = [ ((hsPkgs.buildPackages).alex) ];
          };
        };
      };
    }