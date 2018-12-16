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
      specVersion = "1.2.3";
      identifier = {
        name = "AspectAG";
        version = "0.3.5";
      };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/Center/AspectAG";
      url = "";
      synopsis = "Attribute Grammars in the form of an EDSL";
      description = "Library of strongly typed Attribute Grammars implemented using type-level programming";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.HList)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }