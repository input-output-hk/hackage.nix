{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      devel = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hsqml-datamodel-vinyl";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/hsqml-datamodel-vinyl";
      url = "";
      synopsis = "HsQML DataModel instances for Vinyl Rec.";
      description = "HsQML DataModel instances for Vinyl Rec. Requires the field labels to be Typeable.";
      buildType = "Simple";
    };
    components = {
      "hsqml-datamodel-vinyl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsqml-datamodel)
          (hsPkgs.exceptions)
          (hsPkgs.type-list)
          (hsPkgs.vinyl)
        ];
      };
    };
  }