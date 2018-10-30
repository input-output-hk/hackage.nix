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
      specVersion = "1.2";
      identifier = {
        name = "boolsimplifier";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman, Jeff Polakow";
      homepage = "";
      url = "";
      synopsis = "Normal form representation for boolean expressions. Typically simplifies such expressions, but is not guaranteed to produce the absolute simplest form.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }