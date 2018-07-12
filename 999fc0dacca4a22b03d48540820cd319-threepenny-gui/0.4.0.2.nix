{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
      rebug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "threepenny-gui";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel dot de>";
        author = "Chris Done, Heinrich Apfelmus";
        homepage = "http://www.haskell.org/haskellwiki/Threepenny-gui";
        url = "";
        synopsis = "GUI framework that uses the web browser as a display.";
        description = "Threepenny-GUI is a GUI framework that uses the web browser as a display.\n\nIt's cheap and easy to install because everyone has a web browser installed.\n\nInternally, the library implements a small web server\nthat serves a HTML/JavaScript page with the GUI elements.\nYou can freely manipulate the HTML DOM and handle browser events\nfrom your Haskell code.\n\nStability forecast: This is an experimental release! Send us your feedback!\nSignificant API changes are likely in future versions.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-gui -fbuildExamples@";
        buildType = "Simple";
      };
      components = {
        "threepenny-gui" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec-enumerator
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.json
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.network
            hsPkgs.safe
            hsPkgs.snap-server
            hsPkgs.snap-core
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.websockets
            hsPkgs.websockets-snap
            hsPkgs.vault
          ];
        };
        exes = {
          "threepenny-examples-bartab" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          "threepenny-examples-buttons" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          "threepenny-examples-chat" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.transformers
              hsPkgs.filepath
              hsPkgs.time
            ];
          };
          "threepenny-examples-crud" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.threepenny-gui
            ];
          };
          "threepenny-examples-currencyconverter" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.safe
            ];
          };
          "threepenny-examples-dragndropexample" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          "threepenny-examples-drummachine" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          "threepenny-examples-missing-dollars" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.threepenny-gui
              hsPkgs.safe
            ];
          };
          "threepenny-examples-use-words" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.parsec
            ];
          };
        };
      };
    }