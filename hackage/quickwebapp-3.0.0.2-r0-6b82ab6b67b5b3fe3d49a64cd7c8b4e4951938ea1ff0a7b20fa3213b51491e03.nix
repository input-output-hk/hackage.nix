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
        name = "quickwebapp";
        version = "3.0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "julien.tanguy@jhome.fr";
      author = "Julien Tanguy";
      homepage = "";
      url = "";
      synopsis = "A quick webapp generator for any file processing tool";
      description = "A quick-and-dirty api generator, inspired from the 'interact' function from\n'Prelude'.\n\n> interactWeb reverse\n\nThis creates a server listening on port 8080, or environment value PORT.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.either)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.servant-lucid)
          (hsPkgs.lucid)
          (hsPkgs.warp)
        ];
      };
    };
  }