{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hamusic"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Samuel Silva";
      maintainer = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      author = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      homepage = "https://troglodita.di.uminho.pt/svn/musica/work/HaMusic";
      url = "";
      synopsis = "Library to handle abstract music";
      description = "This library consists on abstract music manipulation. It also\nsupports interfaces with MusicXML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.HaXml)
          (hsPkgs.musicxml)
          (hsPkgs.haskore)
          (hsPkgs.non-negative)
          ];
        };
      exes = {
        "HaMusic" = { depends = [ (hsPkgs.filepath) ]; };
        "MusicTranslate" = {};
        "MusicCount" = {};
        "MusicAnnotate" = {};
        };
      };
    }