{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "fresco-binding";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "";
      url = "";
      synopsis = "Fresco binding for Haskell";
      description = "Fresco is a framwork for multi-language programming. This is the Haskell binding.";
      buildType = "Simple";
    };
    components = {
      "fresco-binding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.binary-serialise-cbor)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
    };
  }