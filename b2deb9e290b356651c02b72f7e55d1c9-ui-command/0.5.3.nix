{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ui-command";
          version = "0.5.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Conrad Parker <conrad@metadecks.org>";
        author = "Conrad Parker <conrad@metadecks.org>";
        homepage = "";
        url = "";
        synopsis = "A framework for friendly commandline programs";
        description = "This is a framework for creating commandline applications. It\nprovides various features which give a polished feel to your\napplication.\n\nIt is designed to encourage you to provide clear documentation\nand working examples. It implements default ''help''\nand ''man'' commands for your application, which will layout help\ntext and generate Unix-style man pages.\n\nIt provides special handling for applications of the form\n''program command args'', the style of interaction common in revision\ncontrol systems. It will dispatch to handler functions that you\nprovide for each command, and also provide command-specific\nhelp to the user.";
        buildType = "Simple";
      };
      components = {
        "ui-command" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.monads-fd
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.data-default
          ];
        };
        exes = { "ui-cmd-hello" = {}; };
      };
    }