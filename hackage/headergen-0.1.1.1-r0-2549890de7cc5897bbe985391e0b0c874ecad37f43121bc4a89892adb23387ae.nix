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
        name = "headergen";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Nils 'bash0r' Jonsson";
      maintainer = "aka.bash0r@gmail.com";
      author = "Nils 'bash0r' Jonsson";
      homepage = "https://github.com/aka-bash0r/headergen";
      url = "";
      synopsis = "Creates a header for a haskell source file.";
      description = "The headergen package provides a small utility for\ncreating documentation headers for source files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "headergen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.haskeline)
          ];
        };
      };
    };
  }