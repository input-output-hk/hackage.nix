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
      specVersion = "1.6";
      identifier = {
        name = "groundhog";
        version = "0.7.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "http://github.com/lykahb/groundhog";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library maps your datatypes to a relational model, in a way similar to what ORM libraries do in object-oriented programming. The mapping can be configured to work with almost any schema. Groundhog supports schema migrations, composite keys, advanced expressions in queries, and much more. See tutorial <https://www.fpcomplete.com/user/lykahb/groundhog> and examples <https://github.com/lykahb/groundhog/tree/master/examples> on GitHub.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }