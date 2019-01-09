{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { opengl = true; webgl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ombra"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2017 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.Boolean)
          (hsPkgs.vector-space)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.hashtables)
          (hsPkgs.MemoTrie)
          ] ++ (pkgs.lib).optional (flags.opengl && !flags.webgl) (hsPkgs.gl)) ++ (pkgs.lib).optional (flags.webgl) (hsPkgs.ghcjs-base);
        };
      };
    }