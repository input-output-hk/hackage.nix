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
      specVersion = "1.2";
      identifier = {
        name = "maccatcher";
        version = "0.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Obtain the host MAC address on *NIX and Windows.";
      description = "Obtain the host MAC address on *NIX and Windows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.binary)
          (hsPkgs.process)
          (hsPkgs.parsec)
        ];
      };
    };
  }