{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pgdl"; version = "6.6"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sifmelcara";
      author = "sifmelcara";
      homepage = "";
      url = "";
      synopsis = "pgdownloader";
      description = "a terminal user interface program that downloads a video from html and plays immediately.(Calling vlc)\n\nOnly for Linux and MACOSX.(Currently command call in MACOSX not work.)\n\nIt parses a remote html file which has link tag & filename tag in the same line.\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.http-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.tagsoup)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.vty-ui)
            (hsPkgs.configurator)
            (hsPkgs.filepath)
            (hsPkgs.binary)
            ];
          };
        };
      };
    }