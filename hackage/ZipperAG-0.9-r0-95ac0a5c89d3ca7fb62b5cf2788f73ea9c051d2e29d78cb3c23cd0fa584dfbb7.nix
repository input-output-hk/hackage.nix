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
        name = "ZipperAG";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "Pedro Martins";
      maintainer = "Pedro Martins <pedromartins4@gmail.com>";
      author = "Pedro Martins <pedromartins4@gmail.com>";
      homepage = "www.di.uminho.pt/~prmartins";
      url = "";
      synopsis = "An implementationg of Attribute Grammars using Functional Zippers";
      description = "An implementationg of Attribute Grammars using Functional Zippers";
      buildType = "Simple";
    };
    components = {
      "ZipperAG" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syz)
        ];
      };
    };
  }