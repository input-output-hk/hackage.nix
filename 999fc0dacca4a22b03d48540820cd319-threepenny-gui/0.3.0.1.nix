{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "threepenny-gui";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel dot de>";
      author = "Chris Done, Heinrich Apfelmus";
      homepage = "http://www.haskell.org/haskellwiki/Threepenny-gui";
      url = "";
      synopsis = "GUI framework that uses the web browser as a display.";
      description = "Threepenny-GUI is a GUI framework that uses the web browser as a display.\n\nIt's cheap and easy to install because everyone has a web browser installed.\n\nInternally, the library implements a small web server\nthat serves a HTML/JavaScript page with the GUI elements.\nYou can freely manipulate the HTML DOM and handle browser events\nfrom your Haskell code.\n\nStability forecast: This is an experimental release! Send us your feedback!\nSignificant API changes are likely in future versions.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-gui -fbuildExamples@\n\nChangelog:\n\n* 0.3.0.0 - Snapshot release. Browser communication with WebSockets. First stab at FRP integration.\n\n* 0.2.0.0 - Snapshot release. First stab at easy JavaScript FFI.\n\n* 0.1.0.0 - Initial release.";
      buildType = "Simple";
    };
    components = {
      "threepenny-gui" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap-server)
          (hsPkgs.snap-core)
          (hsPkgs.websockets)
          (hsPkgs.websockets-snap)
          (hsPkgs.text)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.vault)
          (hsPkgs.bytestring)
          (hsPkgs.json)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.filepath)
          (hsPkgs.data-default)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
      exes = {
        "threepenny-examples-bartab" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-buttons" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-currencyconverter" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.safe)
          ];
        };
        "threepenny-examples-dragndropexample" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-drummachine" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-missing-dollars" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.threepenny-gui)
            (hsPkgs.safe)
          ];
        };
        "threepenny-examples-use-words" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
          ];
        };
        "threepenny-examples-chat" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
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