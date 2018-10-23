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
        name = "lye";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "MostAwesomeDude@gmail.com";
      author = "Corbin Simpson";
      homepage = "";
      url = "";
      synopsis = "A Lilypond-compiling music box";
      description = "Lye is a simple package for turning Lilypond snippets\ninto music.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lye" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HCodecs)
            (hsPkgs.containers)
            (hsPkgs.free)
            (hsPkgs.lens)
            (hsPkgs.parsers)
            (hsPkgs.transformers)
            (hsPkgs.trifecta)
          ];
        };
      };
    };
  }