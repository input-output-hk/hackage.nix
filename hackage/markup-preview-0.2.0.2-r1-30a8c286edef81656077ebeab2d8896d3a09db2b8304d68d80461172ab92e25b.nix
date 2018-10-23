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
        name = "markup-preview";
        version = "0.2.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "mhitza@gmail.com";
      author = "Marius Ghita";
      homepage = "";
      url = "";
      synopsis = "A simple markup document preview (markdown, textile, reStructuredText)";
      description = "A GUI application that renders the markup documents (markdown, textile, reStructuredText) into\nHTML and presents them into a web view. It also reloads the content automatically when the source\nfile changes.\n\nChanges from 0.1.0.0:\n\n* Added command line options e.g. markup file can be specified when starting the program.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "markup-preview" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.webkit)
            (hsPkgs.pandoc)
            (hsPkgs.directory)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
            (hsPkgs.MissingH)
            (hsPkgs.glib)
          ];
        };
      };
    };
  }