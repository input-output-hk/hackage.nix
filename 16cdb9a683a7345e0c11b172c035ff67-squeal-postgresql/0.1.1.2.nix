{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "squeal-postgresql";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Morphism, LLC";
      maintainer = "eitan.chatav@gmail.com";
      author = "Eitan Chatav";
      homepage = "https://github.com/morphismtech/squeal";
      url = "";
      synopsis = "Squeal PostgreSQL Library";
      description = "Squeal is a type-safe embedding of PostgreSQL in Haskell";
      buildType = "Simple";
    };
    components = {
      "squeal-postgresql" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.generics-sop)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network-ip)
          (hsPkgs.postgresql-binary)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.uuid)
        ];
      };
      exes = {
        "squeal-postgresql-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.generics-sop)
            (hsPkgs.mtl)
            (hsPkgs.squeal-postgresql)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
      };
      tests = {
        "squeal-postgresql-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.squeal-postgresql)
          ];
        };
        "squeal-postgresql-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }