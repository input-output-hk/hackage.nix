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
        name = "cabal2ghci";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Hiromi ISHII (c) 2012-2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "A tool to generate .ghci file from .cabal";
      description = "This is the tool to automatically generate `.ghci` file and `.stylish-haskell.yaml` file from `.cabal`. It currently supports to handle Language Pragmas and hs-src-dirs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2ghci" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.text)
            (hsPkgs.cmdargs)
            (hsPkgs.stylish-haskell)
            (hsPkgs.yaml)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }