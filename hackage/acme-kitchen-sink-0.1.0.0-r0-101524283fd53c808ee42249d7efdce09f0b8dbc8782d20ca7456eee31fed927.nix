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
        name = "acme-kitchen-sink";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://github.com/marcosdumay/acme-kitchen-sink";
      url = "";
      synopsis = "A place for dumping that does-not-feel-right code while you improve it";
      description = "Do you have code you feel that should be shared on some library, but\ncan't pin down on how it should be named, or structured? Are you\nreusing tools that you are uncertain if optimal, or even if they solve\nthe right problem? Does everything seem in place, aligned, within\nreach, and yeat you just can't grab that bird?\n\nIf so, this package is for you.\n\nDrop here any code you think may be valuable, and refrain from depending\non this package. If anything here is useful for you, copy into your\nproject and subscribe to the respective issue.\n\nSee the README for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }