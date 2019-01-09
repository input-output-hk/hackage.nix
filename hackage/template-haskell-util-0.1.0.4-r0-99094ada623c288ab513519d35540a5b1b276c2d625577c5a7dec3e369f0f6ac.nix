{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "template-haskell-util"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Haskell.Zhang.Song@hotmail.com";
      author = "songzh";
      homepage = "https://github.com/HaskellZhangSong/TemplateHaskellUtils";
      url = "";
      synopsis = "Some utilities for template Haskell.";
      description = "Some functions that might be useful when you use template haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.GenericPretty)
          (hsPkgs.ghc-prim)
          ];
        };
      };
    }