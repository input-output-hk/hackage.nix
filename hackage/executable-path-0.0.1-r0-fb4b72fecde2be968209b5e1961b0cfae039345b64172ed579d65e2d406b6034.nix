{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "executable-path"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Finding out the full path of the executable.";
      description = "The documentation of \"System.Environment.getProgName\" says that\n\\\"However, this is hard-to-impossible to implement on some non-Unix OSes,\nso instead, for maximum portability, we just return the leafname\nof the program as invoked.\\\"\nThis library tries to provide the missing path.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.filepath) ]
          else [
            (hsPkgs.base)
            ]) ++ (pkgs.lib).optional (system.isLinux) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isFreebsd) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isOpenbsd || system.isNetbsd) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isSolaris) (hsPkgs.unix);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32");
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."CoreFoundation");
        };
      };
    }