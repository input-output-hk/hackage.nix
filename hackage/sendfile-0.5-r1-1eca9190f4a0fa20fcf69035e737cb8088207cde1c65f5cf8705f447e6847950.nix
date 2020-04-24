{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sendfile"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Elder <matt@mattelder.org>";
      author = "Matthew Elder <matt@mattelder.org>";
      homepage = "http://patch-tag.com/r/sendfile";
      url = "";
      synopsis = "A portable sendfile library";
      description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.\n\nCurrently supported platforms: Windows 2000+ (Native), Linux 2.6+ (Native), FreeBSD (Untested!), Everything else (Haskell).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ] ++ (if system.isWindows && !flags.portable
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else (pkgs.lib).optionals (!(system.isLinux && !flags.portable)) ((pkgs.lib).optionals (!(system.isFreebsd && !flags.portable)) [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "network-bytestring"))
            ]));
        libs = (pkgs.lib).optional (system.isWindows && !flags.portable) (pkgs."mswsock" or ((hsPkgs.pkgs-errors).sysDepError "mswsock"));
        buildable = true;
        };
      };
    }