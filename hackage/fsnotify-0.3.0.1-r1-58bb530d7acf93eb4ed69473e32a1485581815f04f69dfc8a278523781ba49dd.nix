{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fsnotify";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom McLaughlin <tom@codedown.io>";
      author = "Mark Dittmer <mark.s.dittmer@gmail.com>, Niklas Broberg";
      homepage = "https://github.com/haskell-fswatch/hfsnotify";
      url = "";
      synopsis = "Cross platform library for file change notification.";
      description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Windows, Mac,\nand Linux filesystem event notification.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.async)
          (hsPkgs.unix-compat)
        ] ++ (if system.isLinux
          then [
            (hsPkgs.hinotify)
            (hsPkgs.shelly)
            (hsPkgs.unix)
          ]
          else if system.isWindows
            then [ (hsPkgs.Win32) ]
            else pkgs.lib.optional (system.isOsx) (hsPkgs.hfsevents));
      };
      tests = {
        "test" = {
          depends  = if system.isWindows
            then [
              (hsPkgs.base)
              (hsPkgs.tasty)
              (hsPkgs.tasty-hunit)
              (hsPkgs.directory)
              (hsPkgs.filepath)
              (hsPkgs.unix-compat)
              (hsPkgs.fsnotify)
              (hsPkgs.async)
              (hsPkgs.temporary)
              (hsPkgs.random)
              (hsPkgs.Win32)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.tasty)
              (hsPkgs.tasty-hunit)
              (hsPkgs.directory)
              (hsPkgs.filepath)
              (hsPkgs.unix-compat)
              (hsPkgs.fsnotify)
              (hsPkgs.async)
              (hsPkgs.temporary)
              (hsPkgs.random)
            ];
        };
      };
    };
  }