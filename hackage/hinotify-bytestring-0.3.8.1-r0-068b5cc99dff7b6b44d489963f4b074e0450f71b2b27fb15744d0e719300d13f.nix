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
        name = "hinotify-bytestring";
        version = "0.3.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Lennart Kolmodin";
      homepage = "https://github.com/hasufell/hinotify-bytestring.git";
      url = "";
      synopsis = "Haskell binding to inotify, using ByteString filepaths";
      description = "This library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified. Filepaths are represented as ByteStrings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "test001" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hinotify-bytestring)
            (hsPkgs.posix-paths)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
        };
        "test002" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hinotify-bytestring)
            (hsPkgs.posix-paths)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
        };
        "test003" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hinotify-bytestring)
            (hsPkgs.posix-paths)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
        };
        "test004" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hinotify-bytestring)
            (hsPkgs.posix-paths)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
        };
        "test005" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.hinotify-bytestring)
            (hsPkgs.posix-paths)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }