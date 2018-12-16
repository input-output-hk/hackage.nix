{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "threepenny-gui";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel dot de>";
      author = "Chris Done, Heinrich Apfelmus";
      homepage = "http://github.com/HeinrichApfelmus/threepenny-gui";
      url = "";
      synopsis = "Small GUI framework that uses the web browser as a display.";
      description = "Threepenny-GUI is a small GUI framework that uses the web browser as a display.\n\nIt's cheap and easy to install because everyone has a web browser installed.\n\nInternally, the library implements a small web server\nthat serves a HTML/JavaScript page with the GUI elements.\nYou can freely manipulate the HTML DOM and handle browser events\nfrom your Haskell code.\n\nStability forecast: This is an experimental release! Send us your feedback!\nBasic functionality should work.\nSignificant API changes are likely in future versions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.snap-server)
          (hsPkgs.snap-core)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.json)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.filepath)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "threepenny-examples-bartab" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-buttons" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-dragndropexample" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-missing-dollars" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.threepenny-gui)
            (hsPkgs.safe)
          ];
        };
        "threepenny-examples-use-words" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
          ];
        };
        "threepenny-examples-chat" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.time)
          ];
        };
      };
    };
  }