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
        name = "access-time";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://www.github.com/batterseapower/access-time";
      url = "";
      synopsis = "Cross-platform support for retrieving file access times";
      description = "Just a simple library that provides cross-platform support (Windows and Unix) for retrieving file access times";
      buildType = "Simple";
    };
    components = {
      "access-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.filepath)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        libs = pkgs.lib.optional (system.isWindows) (pkgs.kernel32);
      };
    };
  }