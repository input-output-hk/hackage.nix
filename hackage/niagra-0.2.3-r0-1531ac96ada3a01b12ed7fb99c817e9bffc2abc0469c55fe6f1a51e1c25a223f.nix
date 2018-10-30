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
        name = "niagra";
        version = "0.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nate@symer.io";
      author = "Nathaniel Symer";
      homepage = "https://github.com/fhsjaagshs/niagra";
      url = "";
      synopsis = "High performance CSS EDSL";
      description = "High performance CSS EDSL";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }