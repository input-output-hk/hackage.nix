{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tinyMesh";
        version = "0.1.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "http://github.com/mgajda/tinyMesh";
      url = "";
      synopsis = "TinyMesh - communicating with auto-meshing sensor network";
      description = "TinyMesh are modules build on CC11xx TI MCU transceivers\nthat allow for automatic meshing, and remote sensor reading.\n\nWhole sensor network may be orchestrated by a single *gateway*\nmachine that is best connected to internet in order\nto submit the data to the cloud.\n\nThis library is aimed to allow programming such a gateway machine\nin Haskell, so that it may be Raspberry Pi, or a similar networked\nARM device.\n\nCurrent functionality of the module is limited to querying\nall the nodes within the mesh.";
      buildType = "Simple";
    };
    components = {
      "tinyMesh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.hex)
          (hsPkgs.serialport)
          (hsPkgs.unix)
        ];
      };
    };
  }