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
      specVersion = "0";
      identifier = {
        name = "salvia-extras";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Collection of non-fundamental request handler for the Salvia web server.";
      description = "Collection of non-fundamental request handler for the Salvia web server.";
      buildType = "Simple";
    };
    components = {
      "salvia-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fclabels)
          (hsPkgs.clevercss)
          (hsPkgs.hscolour)
          (hsPkgs.salvia)
        ];
      };
    };
  }