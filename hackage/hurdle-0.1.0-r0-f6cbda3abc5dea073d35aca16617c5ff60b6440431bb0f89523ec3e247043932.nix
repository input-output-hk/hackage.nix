{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hurdle";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Extract function names from Windows DLLs.";
      description = "Hurdle - (H)askell (U)tilty (R)egarding (DL)l (E)xports.\n\nExtract function names from Windows DLLs a-la pexports.\n\nHurdle has minimal dependencies: base, array and pretty.\n\nCurrently Hurdle also has minimal utility - please consider\npexports instead as Hurdle doesn't yet print ordinals\netcetera (Hurdle was a Sunday afternoon hack that took a wee\nbit longer). But... if anyone has a compelling use case that\nwould benefit the community, I'm willing to look at extending\nHurdle.\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hurdle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }