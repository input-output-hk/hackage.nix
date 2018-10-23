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
        name = "greenclip";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Erèbe";
      maintainer = "romain.gerard@erebe.eu";
      author = "Erèbe - Romain GERARD";
      homepage = "https://github.com/erebe/greenclip#readme";
      url = "";
      synopsis = "Simple clipboard manager to be integrated with rofi";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "greenclip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.Clipboard)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.binary)
            (hsPkgs.microlens)
            (hsPkgs.microlens-mtl)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }