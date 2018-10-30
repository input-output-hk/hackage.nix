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
        name = "alex-tools";
        version = "0.3";
      };
      license = "ISC";
      copyright = "Iavor S. Diatchki, 2016";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "A set of functions for a common use case of Alex.";
      description = "This captures a common patter for using Alex.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }