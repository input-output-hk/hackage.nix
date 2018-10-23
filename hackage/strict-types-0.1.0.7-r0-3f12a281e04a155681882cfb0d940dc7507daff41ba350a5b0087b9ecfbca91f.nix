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
        name = "strict-types";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Jose Iborra Lopez, 2017";
      maintainer = "Pepe Iborra (pepeiborra@gmail.com)";
      author = "Pepe Iborra";
      homepage = "https://github.com/pepeiborra/strict-types";
      url = "";
      synopsis = "A type level predicate ranging over strict types";
      description = "A type class for types T where forall x :: T . rnf x = ⊥ <=> rwhnf x = ⊥";
      buildType = "Simple";
    };
    components = {
      "strict-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }