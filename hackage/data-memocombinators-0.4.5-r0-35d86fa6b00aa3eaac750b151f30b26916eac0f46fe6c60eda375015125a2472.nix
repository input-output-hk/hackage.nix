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
      specVersion = "0";
      identifier = {
        name = "data-memocombinators";
        version = "0.4.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/data-memocombinators";
      url = "";
      synopsis = "Combinators for building memo tables.";
      description = "Combinators for building memo tables.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.data-inttrie)
        ];
      };
    };
  }