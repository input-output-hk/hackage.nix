{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "texbuilder"; version = "0.1.1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Dominik Xaver Hörl";
      author = "Dominik Xaver Hörl";
      homepage = "https://gitlab.com/xaverdh/tex-builder#texbuilder";
      url = "";
      synopsis = "View your latex output while editing";
      description = "This program allows you to view your latex document in your pdf viewer while\nediting it in your favorite editor. When you save your document, this program\nwill recompile it, overwrite the output pdf file and send a signal to your\npdf reader to reload the file. This effectively allows for a\n\"continous preview\"-like experience.\nThis will run on Linux only at the moment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "texbuilder" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.hinotify)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.temporary)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.extra)
            ];
          };
        };
      };
    }