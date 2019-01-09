{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dynamodb-simple"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ondrej Palkovsky";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "https://github.com/ondrap/dynamodb-simple";
      url = "";
      synopsis = "Typesafe library for working with DynamoDB database";
      description = "Framework for accessing DynamoDB database. The majority of AWS API\nis available to the user in a convenient, simple and typesafe manner.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.amazonka-dynamodb)
          (hsPkgs.generics-sop)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.double-conversion)
          (hsPkgs.semigroups)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monad-supply)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.amazonka)
          (hsPkgs.monad-loops)
          (hsPkgs.conduit)
          (hsPkgs.hashable)
          (hsPkgs.amazonka-core)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dynamodb-simple)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.transformers)
            (hsPkgs.safe-exceptions)
            (hsPkgs.amazonka-dynamodb)
            (hsPkgs.amazonka)
            (hsPkgs.conduit)
            (hsPkgs.semigroups)
            (hsPkgs.hashable)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.tagged)
            ];
          };
        };
      };
    }