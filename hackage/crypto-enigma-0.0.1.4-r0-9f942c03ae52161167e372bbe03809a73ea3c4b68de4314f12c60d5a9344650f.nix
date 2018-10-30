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
      specVersion = "1.22";
      identifier = {
        name = "crypto-enigma";
        version = "0.0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "royl@aldaron.com";
      author = "Roy Levien";
      homepage = "https://github.com/orome/crypto-enigma";
      url = "";
      synopsis = "An Enigma machine simulator with display.";
      description = "The crypto-enigma package is an Enigma machine simulator\nwith rich display and machine state details.\n\nFor basic functionality, including some introspection of machine state\nand the mappings performed, simply\n\n> > import Crypto.Enigma\n\nFor richer display functionality additionally\n\n> > import Crypto.Enigma.Display";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.MissingH)
        ];
      };
    };
  }