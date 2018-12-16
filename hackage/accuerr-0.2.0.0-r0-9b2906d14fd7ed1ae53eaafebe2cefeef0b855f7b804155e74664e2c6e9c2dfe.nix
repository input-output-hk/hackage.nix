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
        name = "accuerr";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/accuerr";
      url = "";
      synopsis = "Data type like Either but with accumulating error type";
      description = "Please see the \"Accuerr\" Haddock documentation for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }