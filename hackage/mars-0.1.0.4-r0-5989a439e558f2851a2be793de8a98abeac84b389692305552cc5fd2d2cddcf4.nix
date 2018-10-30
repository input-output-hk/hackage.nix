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
        name = "mars";
        version = "0.1.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ch.howard@zoho.com";
      author = "Christopher Howard";
      homepage = "https://qlfiles.net";
      url = "";
      synopsis = "Generates mountainous terrain using a random walk algorithm.";
      description = "Provides functions for generating mountain-like terrain structure using a\nrandom walk algorithm. Inspired by Pickover's 1998 article \\\"Vacation\non Mars\\\". The data can be output as an ascii-format PLY file, or viewed\n\\\"overhead\\\" as an intensity graph. The PLY file can be loaded into a 3D\nmodeling program such as Blender.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gloss)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
        ];
      };
    };
  }