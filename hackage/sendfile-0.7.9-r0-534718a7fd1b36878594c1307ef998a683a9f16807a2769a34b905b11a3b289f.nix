{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sendfile";
        version = "0.7.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Matthew Elder <matt@mattelder.org>";
      homepage = "http://hub.darcs.net/stepcut/sendfile";
      url = "";
      synopsis = "A portable sendfile library";
      description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.\n\nCurrently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).";
      buildType = "Simple";
    };
    components = {
      "sendfile" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ] ++ pkgs.lib.optional (system.isWindows && !flags.portable) (hsPkgs.Win32);
        libs = pkgs.lib.optional (system.isWindows && !flags.portable) (pkgs."mswsock");
      };
    };
  }