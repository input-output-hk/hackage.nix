{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Clipboard"; version = "2.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz [dhelta `dot` diaz `at` gmail `dot` com]";
      author = "Sævar Berg, Daniel Díaz";
      homepage = "http://haskell.org/haskellwiki/Clipboard";
      url = "";
      synopsis = "System clipboard interface.";
      description = "/Clipboard/ is a library for easily interfacing with the system clipboard with additional unicode support.\nCurrently, only in a Windows system.\n\nFor example, if you type:\n\n> \$ setClipboardString \"Hello, World!\"\n\nThen you have @\\\"Hello, World!\\\"@ available to be pasted wherever you want.\n\nNow, if you type:\n\n> \$ modifyClipboardString reverse\n\nYou will have @\\\"!dlroW ,olleH\\\"@ in your clipboard. So:\n\n> \$ getClipboardString\n> \"!dlroW ,olleH\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isWindows
          then [ (hsPkgs.base) (hsPkgs.Win32) ]
          else [ (hsPkgs.base) ];
        };
      };
    }