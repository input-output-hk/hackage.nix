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
      specVersion = "1.10";
      identifier = {
        name = "FTGL-bytestring";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "HIROKI,HATTORI <seagull.kamome@gmail.com>";
      author = "J.R. Heard, HIROKI,HATTORI";
      homepage = "";
      url = "";
      synopsis = "Portable TrueType font rendering for OpenGL using the Freetype2 library";
      description = "A Haskell binding for the portable TrueType to OpenGL font rendering library FTGL.\nThis package provides OpenGL with polygonal, texture mapped, and extruded fonts using\nFreetype2 and any truetype font.";
      buildType = "Simple";
    };
    components = {
      "FTGL-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.StateVar-transformer)
        ];
        libs = [ (pkgs."ftgl") ];
      };
    };
  }