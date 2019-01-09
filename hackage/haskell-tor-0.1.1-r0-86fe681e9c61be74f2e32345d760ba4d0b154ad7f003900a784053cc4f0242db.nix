{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network = true; hans = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tor"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awick@galois.com";
      author = "Adam Wick";
      homepage = "http://github.com/GaloisInc/haskell-tor";
      url = "";
      synopsis = "A Haskell Tor Node";
      description = "An implementation of the Tor anonymity system in Haskell.\nThe core functionality is exported both as an application\nand as a high-level library exported by the 'Tor' module.\nPlease see that module for common usage scenarios, and\ndip only into the other files for advanced / unplanned\ncases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-types)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.fingertree)
          (hsPkgs.hourglass)
          (hsPkgs.memory)
          (hsPkgs.monadLib)
          (hsPkgs.pretty-hex)
          (hsPkgs.pure-zlib)
          (hsPkgs.time)
          (hsPkgs.tls)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          ] ++ (pkgs.lib).optional (flags.network && !system.isHalvm) (hsPkgs.network)) ++ (pkgs.lib).optional (flags.hans) (hsPkgs.hans);
        };
      exes = {
        "haskell-tor" = {
          depends = (([
            (hsPkgs.asn1-encoding)
            (hsPkgs.asn1-types)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.haskell-tor)
            (hsPkgs.hourglass)
            (hsPkgs.memory)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.x509)
            ] ++ (pkgs.lib).optional (flags.hans) (hsPkgs.hans)) ++ (pkgs.lib).optional (flags.network && !system.isHalvm) (hsPkgs.network)) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs.HALVMCore)
            (hsPkgs.XenDevice)
            ];
          };
        };
      tests = {
        "test-tor" = {
          depends = [
            (hsPkgs.asn1-types)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.haskell-tor)
            (hsPkgs.hourglass)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.memory)
            (hsPkgs.pretty-hex)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.time)
            (hsPkgs.x509)
            ];
          };
        };
      };
    }