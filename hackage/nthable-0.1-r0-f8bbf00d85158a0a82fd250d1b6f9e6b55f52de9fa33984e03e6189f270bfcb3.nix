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
        name = "nthable";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "porges@porg.es";
      author = "George Pollard";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Generalization of 'fst', 'snd', etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.type-level)
          (hsPkgs.base)
        ];
      };
    };
  }