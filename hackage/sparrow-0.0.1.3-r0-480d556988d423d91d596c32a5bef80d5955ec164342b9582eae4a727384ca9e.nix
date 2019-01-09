{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sparrow"; version = "0.0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "Unified streaming dependency management for web apps";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/sparrow#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-attoparsec)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-uri)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.extractable-singleton)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.list-t)
          (hsPkgs.monad-control)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.mtl)
          (hsPkgs.nested-routes)
          (hsPkgs.path)
          (hsPkgs.path-extra)
          (hsPkgs.pred-trie)
          (hsPkgs.stm)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.tmapchan)
          (hsPkgs.tmapmvar)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.urlpath)
          (hsPkgs.uuid)
          (hsPkgs.wai)
          (hsPkgs.wai-middleware-content-type)
          (hsPkgs.wai-transformers)
          (hsPkgs.websockets)
          (hsPkgs.websockets-simple)
          (hsPkgs.wuss)
          ];
        };
      };
    }