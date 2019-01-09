{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "vorbiscomment"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "christopher.t.wagner@gmail.com";
      author = "Chris Wagner";
      homepage = "";
      url = "";
      synopsis = "Reading of Vorbis comments from Ogg Vorbis files";
      description = "This library supports reading of Vorbis comments from Ogg Vorbis files, and\nwill perhaps support writing of such comments in the future; as well as,\nperhaps, reading/writing Vorbis comments to other file formats\n(FLAC, Theora, etc).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary-strict)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }