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
      specVersion = "1.16";
      identifier = {
        name = "mp";
        version = "0.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Piotr Borek <piotrborek@op.pl>";
      author = "Piotr Borek <piotrborek@op.pl>";
      homepage = "http://code.google.com/p/linux-music-player";
      url = "";
      synopsis = "Music player for linux.";
      description = "Music player for linux.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vty-ui)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.ConfigFile)
            (hsPkgs.MissingH)
            (hsPkgs.filepath)
            (hsPkgs.daemons)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.gstreamer)
            (hsPkgs.glib)
            (hsPkgs.unordered-containers)
            (hsPkgs.binary)
            (hsPkgs.hgettext)
            (hsPkgs.setlocale)
            (hsPkgs.unix)
            (hsPkgs.random)
            (hsPkgs.utf8-string)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }