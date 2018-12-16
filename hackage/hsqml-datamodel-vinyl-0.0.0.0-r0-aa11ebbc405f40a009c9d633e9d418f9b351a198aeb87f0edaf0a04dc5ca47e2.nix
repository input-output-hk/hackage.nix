{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hsqml-datamodel-vinyl";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/hsqml-datamodel-vinyl";
      url = "";
      synopsis = "HsQML DataModel instances for Vinyl Rec.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hsqml-datamodel)
          (hsPkgs.exceptions)
          (hsPkgs.show-type)
          (hsPkgs.template-haskell)
          (hsPkgs.type-list)
          (hsPkgs.vinyl)
        ];
      };
    };
  }