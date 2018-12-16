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
        name = "horname";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Moritz Kiefer";
      maintainer = "value";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/horname#readme";
      url = "";
      synopsis = "Rename function definitions returned by SMT solvers";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.uniplate)
          (hsPkgs.wl-pprint-text)
        ];
      };
      exes = {
        "horname" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.horname)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
    };
  }