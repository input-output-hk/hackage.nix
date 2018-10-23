{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "imbib";
        version = "1.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Minimalistic reference manager.";
      description = "The tool to facilitates the workflow: webbrowser -> bibtex file -> directory of .pdfs. The design is minimalistic (eg. no editor is included; emacs can be fired up by double right-clicking an entry).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "imbib" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.bibtex)
            (hsPkgs.split)
            (hsPkgs.gtk)
            (hsPkgs.glib)
            (hsPkgs.download-curl)
            (hsPkgs.curl)
            (hsPkgs.bytestring)
            (hsPkgs.gnomevfs)
            (hsPkgs.utf8-string)
            (hsPkgs.ConfigFile)
          ];
        };
        "imbibatch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.bibtex)
            (hsPkgs.split)
            (hsPkgs.bytestring)
            (hsPkgs.ConfigFile)
          ];
        };
      };
    };
  }