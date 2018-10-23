{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "simple-firewire";
        version = "0.1.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aleator@gmail.com";
      author = "Ville Tirronen";
      homepage = "https://github.com/aleator/simple-firewire";
      url = "";
      synopsis = "Simplified interface for firewire cameras";
      description = "A simplified interface for firewire cameras based on libdc1394 <http://damien.douxchamps.net/ieee1394/libdc1394/>\n\nCurrently this interfaces with CV library and\nprovides both plain IO based interface for\ncontrolling the cameras.\n\n\nThe interface will most likely change in the future.";
      buildType = "Simple";
    };
    components = {
      "simple-firewire" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-dc1394)
          (hsPkgs.CV)
        ];
      };
    };
  }