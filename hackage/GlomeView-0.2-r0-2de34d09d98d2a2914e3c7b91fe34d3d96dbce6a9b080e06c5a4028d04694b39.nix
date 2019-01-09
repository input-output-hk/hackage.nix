{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "GlomeView"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008,2010 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://haskell.org/haskellwiki/Glome";
      url = "";
      synopsis = "SDL Frontend for Glome ray tracer";
      description = "Ray Tracer capable of rendering a variety of primitives,\nwith support for CSG (difference and intersection of solids),\nBIH-based acceleration structure, and ability to load NFF\nformat files.  The rendering algorithms have been abstracted\nto an external library, GlomeTrace.  This is just a front-end\nto the library that renders scenes into an SDL window.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Glome" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.monad-par)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.vector)
            (hsPkgs.GlomeVec)
            (hsPkgs.GlomeTrace)
            (hsPkgs.SDL)
            ];
          };
        };
      };
    }