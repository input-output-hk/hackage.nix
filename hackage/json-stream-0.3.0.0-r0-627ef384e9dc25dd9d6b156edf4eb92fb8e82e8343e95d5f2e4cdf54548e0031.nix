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
        name = "json-stream";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "https://github.com/ondrap/json-stream";
      url = "";
      synopsis = "Incremental applicative JSON parser";
      description = "Easy to use JSON parser fully supporting incremental parsing.\nParsing grammar in applicative form.\nThe parser is compatibile with aeson and its FromJSON class.\nIt is possible to use aeson monadic parsing when appropriate.\nThe parser supports constant-space safe incremental parsing regardless\nof the input data. In addition to performance-critical parts written in C,\na lot of performance is gained by being less memory intensive especially\nwhen used for stream parsing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.hspec)
            (hsPkgs.scientific)
          ];
        };
      };
    };
  }