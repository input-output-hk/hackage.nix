{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sendfile"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Matthew Elder <matt@mattelder.org>";
      homepage = "http://patch-tag.com/r/mae/sendfile";
      url = "";
      synopsis = "A portable sendfile library";
      description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.\n\nCurrently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Native), OS-X 10.5+ (Native), Everything else (Portable Haskell code).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ (if system.isWindows && !flags.portable
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else (pkgs.lib).optionals (!(system.isLinux && !flags.portable)) ((pkgs.lib).optionals (!(system.isFreebsd && !flags.portable)) ((pkgs.lib).optionals (!(system.isOsx && !flags.portable)) [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
            ])));
        libs = (pkgs.lib).optional (system.isWindows && !flags.portable) (pkgs."mswsock" or (errorHandler.sysDepError "mswsock"));
        buildable = true;
        };
      };
    }