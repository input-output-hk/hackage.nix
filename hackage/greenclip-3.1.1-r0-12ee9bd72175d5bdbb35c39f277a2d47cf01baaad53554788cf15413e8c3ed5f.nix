{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "greenclip"; version = "3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Erèbe";
      maintainer = "romain.gerard@erebe.eu";
      author = "Erèbe - Romain GERARD";
      homepage = "https://github.com/erebe/greenclip#readme";
      url = "";
      synopsis = "Simple clipboard manager to be integrated with rofi";
      description = "Simple clipboard manager to be integrated with rofi - Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "greenclip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.exceptions)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.binary)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.wordexp)
            (hsPkgs.X11)
            ];
          pkgconfig = [
            (pkgconfPkgs.x11)
            (pkgconfPkgs.xcb)
            (pkgconfPkgs.xau)
            (pkgconfPkgs.xdmcp)
            ];
          };
        };
      };
    }