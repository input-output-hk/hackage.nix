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
      identifier = { name = "sendfile"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Elder <matt@mattelder.org>";
      author = "Matthew Elder <matt@mattelder.org>";
      homepage = "http://patch-tag.com/r/sendfile";
      url = "";
      synopsis = "A portable sendfile library";
      description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.\n\nCurrently supported platforms:\n* Windows 2000+ (Native)\n* Linux 2.6+ (Native)\n* Everything else (Haskell)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ (pkgs.lib).optionals (!(system.isWindows && !flags.portable)) ((pkgs.lib).optional (!(system.isLinux && !flags.portable)) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring")));
        libs = (pkgs.lib).optionals (system.isWindows && !flags.portable) [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."mswsock" or (errorHandler.sysDepError "mswsock"))
          ];
        buildable = true;
        };
      };
    }