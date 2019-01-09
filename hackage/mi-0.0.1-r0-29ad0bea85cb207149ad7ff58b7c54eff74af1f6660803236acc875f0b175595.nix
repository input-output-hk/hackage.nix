{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mi"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 matt";
      maintainer = "matt76k@gmail.com";
      author = "matt, ejima";
      homepage = "https://github.com/matt76k/mi";
      url = "";
      synopsis = "Multiple Instance for Haskell";
      description = "Library for Multiple Instance";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.split)
          ];
        };
      };
    }