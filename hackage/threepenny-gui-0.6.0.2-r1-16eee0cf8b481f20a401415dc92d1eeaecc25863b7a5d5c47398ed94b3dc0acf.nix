{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
      network-uri = true;
      rebug = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "threepenny-gui";
        version = "0.6.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel dot de>";
      author = "Heinrich Apfelmus";
      homepage = "http://wiki.haskell.org/Threepenny-gui";
      url = "";
      synopsis = "GUI framework that uses the web browser as a display.";
      description = "Threepenny-GUI is a GUI framework that uses the web browser as a display.\n\nIt's very easy to install because everyone has a web browser installed.\n\nA program written with Threepenny is essentially a small web server that\ndisplays the user interface as a web page to any browser that connects to it.\nYou can freely manipulate the HTML DOM and handle JavaScript events\nfrom your Haskell code.\n\nStability forecast: This is an experimental release! Send me your feedback!\nSignificant API changes are likely in future versions.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-gui -fbuildExamples@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.safe)
          (hsPkgs.snap-server)
          (hsPkgs.snap-core)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.websockets)
          (hsPkgs.websockets-snap)
          (hsPkgs.vault)
          (hsPkgs.vector)
        ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
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
        "threepenny-examples-canvas" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.threepenny-gui)
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
        "threepenny-examples-crud" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.threepenny-gui)
          ];
        };
        "threepenny-examples-currencyconverter" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.safe)
          ];
        };
        "threepenny-examples-dragndropexample" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
        "threepenny-examples-drummachine" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }