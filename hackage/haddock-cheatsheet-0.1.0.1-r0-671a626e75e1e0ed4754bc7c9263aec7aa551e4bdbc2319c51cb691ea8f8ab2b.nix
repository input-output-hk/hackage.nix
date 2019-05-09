{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "haddock-cheatsheet"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2019 Sodality Labs";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/haddock-cheatsheet#readme";
      url = "";
      synopsis = "A documentation-only package exemplifying haddock markup features";
      description = "This package provides a documentation module giving examples of all haddock markup features.\nCompared with the official <https://haskell-haddock.readthedocs.io/en/latest/markup.html haddock documentation>\n,this package is more compact, while also being descriptive enough to use from scratch.\nBoth the source and rendered document are meant to be used together.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }