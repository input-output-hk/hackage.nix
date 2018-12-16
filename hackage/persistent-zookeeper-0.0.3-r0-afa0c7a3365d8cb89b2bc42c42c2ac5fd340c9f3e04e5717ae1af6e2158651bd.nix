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
      specVersion = "1.8";
      identifier = {
        name = "persistent-zookeeper";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Junji Hashimoto <junji.hashimoto@gree.net>";
      author = "Junji Hashimoto <junji.hashimoto@gree.net>";
      homepage = "";
      url = "";
      synopsis = "Backend for persistent library using Zookeeper.";
      description = "Based on the Zookeeper package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.utf8-string)
          (hsPkgs.binary)
          (hsPkgs.scientific)
          (hsPkgs.hzk)
          (hsPkgs.resource-pool)
          (hsPkgs.path-pieces)
          (hsPkgs.template-haskell)
          (hsPkgs.base64-bytestring)
          (hsPkgs.stm)
          (hsPkgs.conduit)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.time)
            (hsPkgs.attoparsec)
            (hsPkgs.template-haskell)
            (hsPkgs.monad-control)
            (hsPkgs.utf8-string)
            (hsPkgs.persistent-zookeeper)
            (hsPkgs.scientific)
            (hsPkgs.hzk)
            (hsPkgs.resource-pool)
            (hsPkgs.path-pieces)
            (hsPkgs.base64-bytestring)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.conduit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }