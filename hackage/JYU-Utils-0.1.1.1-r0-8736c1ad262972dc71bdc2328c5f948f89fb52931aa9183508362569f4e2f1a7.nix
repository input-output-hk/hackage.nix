{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "JYU-Utils"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Some utility functions for JYU projects";
      description = "List, function and monad utility functions.\nIncludes an old variant of MonadRandom that is used in\nCV-package.\nPretty much the only reason to ever use this\nis to compile CV-package, and that is also just\ndue legacy reasons.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.bytestring)
          (hsPkgs.parallel)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.lazysmallcheck)
          (hsPkgs.mwc-random)
          (hsPkgs.deepseq)
          ];
        };
      };
    }