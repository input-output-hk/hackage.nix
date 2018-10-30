{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test = false;
      executable = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "udbus";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-udbus";
      url = "";
      synopsis = "Small DBus implementation";
      description = "Small and flexible implementation of the dbus protocol.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.ghc-prim)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "dbus" = {
          depends  = pkgs.lib.optional (flags.executable) (hsPkgs.network);
        };
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }