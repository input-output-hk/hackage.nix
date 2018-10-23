{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "groundhog";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library maps your datatypes to a relational model, in a way similar to what ORM libraries do in OOP. The schema can be configured flexibly which makes integration with existing databases easy. Groundhog supports schema migrations, composite keys, compositional queries, and much more. See the folder with examples for introduction.";
      buildType = "Simple";
    };
    components = {
      "groundhog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }