{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      x11 = false;
      carbon = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skype4hs";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "emonkak@gmail.com";
      author = "Shota Nozaki";
      homepage = "https://github.com/emonkak/haskell-skype";
      url = "";
      synopsis = "Skype Desktop API binding for Haskell";
      description = "Skype Desktop API binding for Haskell";
      buildType = "Simple";
    };
    components = {
      "skype4hs" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.word8)
        ] ++ pkgs.lib.optional (system.isLinux || system.isFreebsd || flags.x11) (hsPkgs.X11);
        frameworks = pkgs.lib.optional (system.isOsx || flags.carbon) (pkgs."Carbon");
      };
    };
  }