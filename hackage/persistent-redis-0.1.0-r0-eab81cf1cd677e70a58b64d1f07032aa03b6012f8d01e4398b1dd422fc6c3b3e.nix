{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent-redis";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pavel Ryzhov <paul@paulrz.cz>";
      author = "Pavel Ryzhov <paul@paulrz.cz>";
      homepage = "";
      url = "";
      synopsis = "Backend for persistent library using Redis.";
      description = "Based on the Redis package.";
      buildType = "Simple";
    };
    components = {
      "persistent-redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hedis)
          (hsPkgs.bytestring)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "basic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedis)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.template-haskell)
            (hsPkgs.monad-control)
            (hsPkgs.utf8-string)
            (hsPkgs.persistent-redis)
          ];
        };
      };
    };
  }