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
      specVersion = "1.10";
      identifier = {
        name = "unitym-yesod";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Brian Hurt";
      maintainer = "bhurt42@gmail.com";
      author = "Brian Hurt";
      homepage = "https://github.com/bhurt/unitym#readme";
      url = "";
      synopsis = "Implementation of the unity monad for the Yesod framework";
      description = "Implementation of the unity monad for the Yesod framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unitym)
          (hsPkgs.yesod)
        ];
      };
    };
  }