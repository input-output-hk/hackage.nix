{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "antiope-contract"; version = "7.1.1"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/packetloop/antiope-contract#readme";
      url = "";
      synopsis = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.antiope-s3)
          (hsPkgs.avro)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          ];
        };
      };
    }