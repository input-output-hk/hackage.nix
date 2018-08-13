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
      "accuerr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }