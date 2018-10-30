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
        name = "th-lift-instances";
        version = "0.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2016 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/th-lift-instances/";
      url = "";
      synopsis = "Lift instances for template-haskell for common data types.";
      description = "Most data types in haskell platform do not have Lift instances. This package provides orphan instances\nfor containers, text, bytestring and vector.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.th-lift-instances)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }