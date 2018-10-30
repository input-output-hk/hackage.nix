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
        name = "cypher";
        version = "0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the neo4j \"cypher\" query language";
      description = "haskell-cypher makes it easy to send cypher commands to neo4j servers over their REST API.\nAdditionally, it allows users to parse haskell datatypes from \"cypher\" queries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.http-conduit)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.attoparsec)
          (hsPkgs.resourcet)
          (hsPkgs.classy-parallel)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }