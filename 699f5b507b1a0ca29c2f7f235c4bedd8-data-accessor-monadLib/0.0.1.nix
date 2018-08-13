{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "data-accessor-monadLib";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "Accessor functions for monadLib's monads";
      description = "";
      buildType = "Simple";
    };
    components = {
      "data-accessor-monadLib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-accessor)
          (hsPkgs.monadLib)
        ];
      };
    };
  }