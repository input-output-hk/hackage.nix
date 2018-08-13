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
      specVersion = "1.6";
      identifier = {
        name = "libnotify";
        version = "0.0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Emon Tsukimiya, Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "Haskell binding for Libnotify";
      description = "Usable binding to libnotify library.";
      buildType = "Simple";
    };
    components = {
      "libnotify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.mtl)
        ];
        pkgconfig = [
          (pkgconfPkgs.libnotify)
        ];
      };
    };
  }