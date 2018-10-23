{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old-time = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "unix-compat";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Björn Bringert, Duncan Coutts, Jacob Stanley, Bryan O'Sullivan";
      homepage = "http://github.com/jystic/unix-compat";
      url = "";
      synopsis = "Portable POSIX-compatibility layer.";
      description = "This package provides portable implementations of parts\nof the unix package. This package re-exports the unix\npackage when available. When it isn't available,\nportable implementations are used.";
      buildType = "Simple";
    };
    components = {
      "unix-compat" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if system.isWindows
          then [
            (hsPkgs.Win32)
          ] ++ (if flags.old-time
            then [ (hsPkgs.old-time) ] ++ [
              (hsPkgs.directory)
            ]
            else [
              (hsPkgs.time)
              (hsPkgs.directory)
            ])
          else [ (hsPkgs.unix) ]);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."msvcrt");
      };
    };
  }