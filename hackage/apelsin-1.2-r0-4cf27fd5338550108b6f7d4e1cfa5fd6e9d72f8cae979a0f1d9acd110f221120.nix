{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      relativepath = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apelsin";
        version = "1.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christoffer@ojeling.net";
      author = "Christoffer Öjeling";
      homepage = "";
      url = "";
      synopsis = "Server and community browser for the game Tremulous";
      description = "A gtk2hs server and clan browser for the open source game Tremulous <http://tremulous.net>.\nBoth Tremulous 1.1 and GPP are supported.\n\nFeatures filtering, player search, a list of online clan members, a clan list and basic perferences.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "apelsin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.tremulous-query)
            (hsPkgs.gtk)
            (hsPkgs.glib)
            (hsPkgs.process)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }