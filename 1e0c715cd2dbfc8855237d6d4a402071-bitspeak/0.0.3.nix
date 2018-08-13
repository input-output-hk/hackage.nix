{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "bitspeak";
        version = "0.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Maurício C. Antunes";
      homepage = "";
      url = "";
      synopsis = "Proof-of-concept tool for writing using binary choices.";
      description = "This was an application for exercising writing\nusing binary choices, i.e., selecting from two sets of\nconsecutive letters.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bitspeak" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bindings-DSL)
            (hsPkgs.bindings-glib)
            (hsPkgs.bindings-gobject)
          ];
          pkgconfig = [
            (pkgconfPkgs.gdk-2.0)
            (pkgconfPkgs.gtk+-2.0)
            (pkgconfPkgs.pango)
          ];
        };
      };
    };
  }