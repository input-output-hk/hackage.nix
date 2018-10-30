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
        name = "smallcheck-series";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/smallcheck-series";
      url = "";
      synopsis = "Extra SmallCheck series and utilities";
      description = "Orphan\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Serial Serial>@\ninstances and utilities to create and manipulate\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Series Series>@\nfor common types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.logict)
          (hsPkgs.smallcheck)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }