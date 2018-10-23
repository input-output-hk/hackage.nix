{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "AC-EasyRaster-GTK";
        version = "1.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Coppin <MathematicalOrchid@hotmail.com>";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "GTK+ pixel plotting.";
      description = "This package is a thin layer over Gtk2hs providing an easy\ninterface for people who want to do bitmapped graphics.\n\nCairo already provides easy access to /vector/ graphics;\nthis package is directed at /bitmap/ graphics (i.e.,\nreading and writing individual pixels). This is useful for\napplications such as fractal generators, ray tracers, etc.\n\nChanges:\n\n* Should work with Gtk2hs 0.11.x now.\n\n* Fix minor documentation glitches.";
      buildType = "Simple";
    };
    components = {
      "AC-EasyRaster-GTK" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.gtk)
        ];
      };
    };
  }