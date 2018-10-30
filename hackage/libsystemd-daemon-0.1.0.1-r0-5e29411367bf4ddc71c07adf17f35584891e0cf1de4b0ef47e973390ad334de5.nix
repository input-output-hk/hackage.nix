{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      usepkgconfig = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "libsystemd-daemon";
        version = "0.1.0.1";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Cedric Staub <cs+hs@cssx.cc>";
      author = "Cedric Staub <cs+hs@cssx.cc>";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for libsystemd-daemon.";
      description = "Haskell bindings for libsystemd-daemon.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
        ];
        libs = [
          (pkgs."systemd-daemon")
        ];
        pkgconfig = pkgs.lib.optional (flags.usepkgconfig) (pkgconfPkgs.libsystemd-daemon);
      };
      tests = {
        "run-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libsystemd-daemon)
            (hsPkgs.network)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }