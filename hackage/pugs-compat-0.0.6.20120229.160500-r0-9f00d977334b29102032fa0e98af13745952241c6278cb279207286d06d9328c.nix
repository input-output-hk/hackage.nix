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
      specVersion = "1.2.3";
      identifier = {
        name = "pugs-compat";
        version = "0.0.6.20120229.160500";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Portable Haskell/POSIX layer for Pugs";
      description = "Portable Haskell/POSIX layer for Pugs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.regex-base)
          (hsPkgs.random)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.utf8-string)
          (hsPkgs.syb)
          (hsPkgs.stringtable-atom)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }