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
      specVersion = "1.10";
      identifier = {
        name = "json-stream";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "https://github.com/ondrap/json-stream";
      url = "";
      synopsis = "Incremental applicative JSON parser";
      description = "Easy to use JSON parser fully supporting incremental parsing.\nParsing grammar in applicative form.\nThe parser is compatibile with\naeson and its FromJSON class. It is possible to use aeson\nmonadic parsing when appropriate.\nThe parser supports incremental parsing while using as little\nmemory as possible with performance comparable to aeson.";
      buildType = "Simple";
    };
    components = {
      "json-stream" = {
        depends  = [
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
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }