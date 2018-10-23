{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "remote-debugger";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kurbatsky@gmail.com";
      author = "";
      homepage = "https://github.com/octomarat/HaskellDebugger";
      url = "";
      synopsis = "Interface to ghci debugger";
      description = "Wraper to GHC debugger API allowing debugging throught socket. Used in haskell-idea-plugin.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "remote-debugger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.array)
            (hsPkgs.network)
            (hsPkgs.json)
          ];
        };
      };
    };
  }