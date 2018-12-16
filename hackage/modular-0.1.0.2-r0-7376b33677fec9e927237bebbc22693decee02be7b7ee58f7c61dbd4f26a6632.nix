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
      specVersion = "1.12";
      identifier = {
        name = "modular";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Preetham Gujjula";
      maintainer = "preetham.gujjula@gmail.com";
      author = "Preetham Gujjula";
      homepage = "https://github.com/pgujjula/modular#readme";
      url = "";
      synopsis = "Type-safe modular arithmetic";
      description = "Please the documentation on GitHub at <https://github.com/pgujjula/modular>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-typelits-knownnat)
        ];
      };
    };
  }