{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "unix-compat";
        version = "0.2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Björn Bringert, Duncan Coutts, Jacob Stanley";
      homepage = "http://github.com/jystic/unix-compat";
      url = "";
      synopsis = "Portable POSIX-compatibility layer.";
      description = "This package provides portable implementations of parts\nof the unix package. This package re-exports the unix\npackage when available. When it isn't available,\nportable implementations are used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if flags.portable || system.isWindows
          then [ (hsPkgs.old-time) ] ++ [
            (hsPkgs.directory)
          ]
          else [ (hsPkgs.unix) ]);
      };
    };
  }