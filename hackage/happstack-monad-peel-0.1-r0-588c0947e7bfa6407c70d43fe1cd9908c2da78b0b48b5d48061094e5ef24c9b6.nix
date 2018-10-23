{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "happstack-monad-peel";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@nils.cc";
      author = "Nils Schweinsberg <mail@nils.cc>";
      homepage = "";
      url = "";
      synopsis = "monad-peel instances for Happstack types";
      description = "monad-peel instances for Happstack types";
      buildType = "Simple";
    };
    components = {
      "happstack-monad-peel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.monad-peel)
          (hsPkgs.happstack-server)
        ];
      };
    };
  }