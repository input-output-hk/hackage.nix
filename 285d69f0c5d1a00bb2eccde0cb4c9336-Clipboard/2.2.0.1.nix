{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Clipboard";
          version = "2.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Diaz [danieldiaz `at` dhelta `dot` net]";
        author = "Sævar Berg, Daniel Díaz";
        homepage = "http://dhelta.net/hprojects/Clipboard";
        url = "";
        synopsis = "System clipboard interface.";
        description = "/Clipboard/ is a library for easily interfacing with the system clipboard with additional unicode support.\nCurrently, only in a Windows system.\n\nFor example, if you type:\n\n> setClipboardString \"Hello, World!\"\n\nThen you have @\\\"Hello, World!\\\"@ available to be pasted where you want.\n\nNow, if you type:\n\n> modifyClipboardString reverse\n\nYou will have @\\\"!dlroW ,olleH\\\"@ in your clipboard. So:\n\n>>> getClipboardString\n\"!dlroW ,olleH\"\n\nChanges from last version:\n\n* New documentation with examples.";
        buildType = "Simple";
      };
      components = {
        Clipboard = {
          depends  = [
            hsPkgs.base
            hsPkgs.Win32
          ];
        };
      };
    }