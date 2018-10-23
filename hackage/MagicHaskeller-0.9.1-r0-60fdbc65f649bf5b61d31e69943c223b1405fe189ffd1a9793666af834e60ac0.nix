{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      ghcapi = true;
      ghc7 = true;
      readfile = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "MagicHaskeller";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
      url = "";
      synopsis = "Automatic inductive functional programmer by systematic search";
      description = "";
      buildType = "Simple";
    };
    components = {
      "MagicHaskeller" = {
        depends  = (([
          (hsPkgs.old-time)
          (hsPkgs.template-haskell)
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.html)
          (hsPkgs.network)
          (hsPkgs.pretty)
        ] ++ pkgs.lib.optionals (flags.ghcapi && !system.isWindows) [
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
        ]) ++ pkgs.lib.optional (flags.readfile) (hsPkgs.haskell-src)) ++ pkgs.lib.optional (flags.ghc7) (hsPkgs.ghc);
      };
    };
  }