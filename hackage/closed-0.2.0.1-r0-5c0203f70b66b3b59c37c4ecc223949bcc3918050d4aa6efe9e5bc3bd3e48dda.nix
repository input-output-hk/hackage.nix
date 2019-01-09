{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "closed"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education <engineering@freckle.com>";
      author = "Chris Parks <chris@freckle.com>";
      homepage = "https://github.com/frontrowed/closed#readme";
      url = "";
      synopsis = "Integers bounded by a closed interval";
      description = "Integers bounded by a closed interval checked at compile time";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.persistent)
          (hsPkgs.text)
          ];
        };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cassava)
            (hsPkgs.closed)
            (hsPkgs.hspec)
            (hsPkgs.markdown-unlit)
            (hsPkgs.persistent)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }