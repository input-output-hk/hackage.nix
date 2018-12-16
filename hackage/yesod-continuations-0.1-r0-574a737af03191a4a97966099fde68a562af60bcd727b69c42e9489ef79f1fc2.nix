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
      specVersion = "1.2";
      identifier = {
        name = "yesod-continuations";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@softmechanics.net";
      author = "Matt Brown";
      homepage = "https://github.com/softmechanics/yesod-continuations/";
      url = "";
      synopsis = "Continuations for Yesod";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.stm)
          (hsPkgs.datetime)
          (hsPkgs.hashmap)
          (hsPkgs.hashable)
          (hsPkgs.system-uuid)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "yesodContinuationsTest" = {};
      };
    };
  }