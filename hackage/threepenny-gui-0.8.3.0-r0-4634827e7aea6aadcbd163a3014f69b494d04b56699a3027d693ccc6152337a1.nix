{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; rebug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "threepenny-gui"; version = "0.8.3.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."websockets-snap" or ((hsPkgs.pkgs-errors).buildDepError "websockets-snap"))
          (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "threepenny-examples-bartab" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-buttons" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-canvas" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-chat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-crud" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-currencyconverter" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-dragndropexample" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-drummachine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "threepenny-examples-svg" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }