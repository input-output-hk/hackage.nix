{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "system-inotify";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl at imperialviolet.org>";
      homepage = "http://darcs.imperialviolet.org/system-inotify";
      url = "";
      synopsis = "Binding to Linux's inotify interface";
      description = "Binding to Linux's inotify interface";
      buildType = "Simple";
    };
    components = {
      "system-inotify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }