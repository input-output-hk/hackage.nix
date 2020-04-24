{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "vorbiscomment"; version = "0.0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary-strict" or ((hsPkgs.pkgs-errors).buildDepError "binary-strict"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }