{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Network-NineP";
        version = "0.4.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "High-level abstraction over 9P protocol";
      description = "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.NineP)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.regex-posix)
          (hsPkgs.mstate)
          (hsPkgs.transformers)
          (hsPkgs.stateref)
          (hsPkgs.convertible)
          (hsPkgs.exceptions)
          (hsPkgs.monad-peel)
          (hsPkgs.hslogger)
        ];
      };
      exes = { "test" = {}; };
    };
  }