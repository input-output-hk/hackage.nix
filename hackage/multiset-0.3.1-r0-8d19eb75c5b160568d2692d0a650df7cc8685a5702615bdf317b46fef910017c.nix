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
        name = "multiset";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "twanvl@gmail.com";
      author = "Twan van Laarhoven";
      homepage = "";
      url = "";
      synopsis = "The Data.MultiSet container type";
      description = "A variation of Data.Set.\nMultisets, sometimes also called bags, can contain multiple copies of the same key.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.base)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }