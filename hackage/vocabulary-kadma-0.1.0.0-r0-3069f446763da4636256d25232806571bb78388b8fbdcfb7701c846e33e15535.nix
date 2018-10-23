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
        name = "vocabulary-kadma";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/vocabularies-hs/";
      url = "";
      synopsis = "Smaoin vocabulary definitions of the base framework.";
      description = "This package provides Smaoin vocabulary entities for direct access in\nHaskell. There can be many vocabulary packages, but this is the first one. It\nspecifically provides entities defined by\n<http://rel4tion.org/projects/kadma Kadma>, i.e. base framework definitions\nsuch as the concepts of Smaoin itself.\n\nAll the vocabularies are under the \"Data.Smaoin.Vocabulary\" module, organized\nby namespace, with names based on the English localization. For example, if\nyou define an ontology under namespace @hello@, you can place vocabulary\nentities under @Data.Smaoin.Vocabulary.Hello@.\n\nVocabulary entity modules should be auto-generated from their source\ndocuments (mostly written in <http://rel4tion.org/projects/idan Idan>), but\nat this early stage the variable definitions in this package are written\nmanually (but based on the Idan sources).\n\nFor more information, see the project homepage.";
      buildType = "Simple";
    };
    components = {
      "vocabulary-kadma" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.smaoin)
        ];
      };
    };
  }