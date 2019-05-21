{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "MissingH"; version = "1.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2018 John Goerzen";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Large utility library";
      description = "@MissingH@ is a library of all sorts of utility functions for Haskell\nprogrammers.  It is written in pure Haskell and thus should be\nextremely portable and easy to use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.time)
          (hsPkgs.network)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.HUnit)
            (hsPkgs.errorcall-eq-instance)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      };
    }