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
        name = "dollaridoos";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@wils.online";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/dollaridoos";
      url = "";
      synopsis = "A newtype for monetary values";
      description = "A newtype for money with appropriate operations defined and no nonsensical instances";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
        ];
      };
    };
  }