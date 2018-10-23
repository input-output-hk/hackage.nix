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
        name = "strict-data";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/strict-data#readme";
      url = "";
      synopsis = "Verious useful strict data structures";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "strict-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.store)
          (hsPkgs.deepseq)
        ];
      };
    };
  }