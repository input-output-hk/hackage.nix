{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-sqlite-simple";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "";
      url = "";
      synopsis = "Functions that smash Pipes and sqlite-simple together";
      description = "Functions that smash Pipes and sqlite-simple together";
      buildType = "Simple";
    };
    components = {
      "pipes-sqlite-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.pipes)
          (hsPkgs.sqlite-simple)
          (hsPkgs.pipes-safe)
        ];
      };
    };
  }