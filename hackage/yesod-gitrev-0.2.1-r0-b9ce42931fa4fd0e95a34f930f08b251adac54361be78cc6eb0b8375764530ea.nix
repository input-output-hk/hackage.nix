{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-gitrev"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/yesod-gitrev";
      url = "";
      synopsis = "A subsite for displaying git information.";
      description = "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.githash)
          (hsPkgs.template-haskell)
          (hsPkgs.yesod-core)
          ];
        };
      tests = {
        "examples" = {
          depends = [ (hsPkgs.base) (hsPkgs.yesod-core) (hsPkgs.yesod-gitrev) ];
          };
        };
      };
    }