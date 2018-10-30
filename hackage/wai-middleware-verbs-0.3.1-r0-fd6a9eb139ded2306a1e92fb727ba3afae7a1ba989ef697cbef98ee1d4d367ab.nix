{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-verbs";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Route different middleware responses based on the incoming HTTP verb.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.mmorph)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.wai-transformers)
            (hsPkgs.wai-middleware-content-type)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }