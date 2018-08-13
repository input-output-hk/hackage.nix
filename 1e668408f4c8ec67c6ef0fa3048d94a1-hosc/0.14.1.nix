{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hosc";
        version = "0.14.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, Stefan Kersten and others, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape, Stefan Kersten";
      homepage = "http://rd.slavepianos.org/?t=hosc";
      url = "";
      synopsis = "Haskell Open Sound Control";
      description = "@hosc@ implements a subset of the /Open Sound Control/\nbyte protocol, <http://opensoundcontrol.org/>.\n\n\"Sound.OSC.Core\" implements the actual protocol.\n\n\"Sound.OSC.Transport.FD\" implements a\n/file descriptor/ based transport layer for @UDP@\nand @TCP@.\n\n\"Sound.OSC.Transport.Monad\" implements a\nmonadic interface to the @FD@ transport layer.\n\nComposite modules are at \"Sound.OSC\" and \"Sound.OSC.FD\".";
      buildType = "Simple";
    };
    components = {
      "hosc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "hosc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hosc)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "hosc-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hosc)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }