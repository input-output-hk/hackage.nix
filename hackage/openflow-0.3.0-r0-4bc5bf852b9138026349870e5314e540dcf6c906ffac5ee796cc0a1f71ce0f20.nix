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
      specVersion = "1.10";
      identifier = {
        name = "openflow";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Voellmy";
      author = "Andreas Voellmy <andreas.voellmy@gmail.com>";
      homepage = "https://github.com/AndreasVoellmy/openflow";
      url = "";
      synopsis = "OpenFlow";
      description = "This package implements the OpenFlow 1.0 and a large part of the OpenFlow 1.3 protocols.\nIt defines a collection of data types representing the logical contents of OpenFlow messages,\ndefines serialization and deserialization methods using the binary package, and provides some simple\nservers that can be used with these data types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq-generics)
          (hsPkgs.hashable)
          (hsPkgs.network)
        ];
      };
    };
  }