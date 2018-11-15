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
      specVersion = "1.20";
      identifier = {
        name = "haskus-utils-variant";
        version = "2.3";
      };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2018";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org";
      url = "";
      synopsis = "Variant and EADT";
      description = "Variant (extensible sum type) and EADT (extensible recursive sum type)\ndatatypes. Documentation can be found at https://docs.haskus.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskus-utils-types)
          (hsPkgs.haskus-utils-data)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskus-utils-variant)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }