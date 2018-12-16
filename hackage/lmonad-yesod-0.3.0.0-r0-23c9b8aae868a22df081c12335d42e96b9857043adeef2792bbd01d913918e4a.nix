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
      specVersion = "1.8";
      identifier = {
        name = "lmonad-yesod";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dev@jamesparker.me";
      author = "James Parker";
      homepage = "";
      url = "";
      synopsis = "LMonad for Yesod integrates LMonad's IFC with Yesod web applications.";
      description = "LMonad for Yesod integrates LMonad's IFC with Yesod web applications. You can define custom security policies by modifying the database model file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.containers)
          (hsPkgs.esqueleto)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.lifted-base)
          (hsPkgs.lmonad)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.shakespeare)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-persistent)
        ];
      };
    };
  }