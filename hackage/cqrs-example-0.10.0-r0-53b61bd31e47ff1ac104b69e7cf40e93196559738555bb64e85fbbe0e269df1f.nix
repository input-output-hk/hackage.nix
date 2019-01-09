{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cqrs-example"; version = "0.10.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "spam@scientician.net";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Example for cqrs package";
      description = "Example for cqrs package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cqrs-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cqrs-core)
            (hsPkgs.cqrs-memory)
            (hsPkgs.deepseq)
            (hsPkgs.io-streams)
            (hsPkgs.random)
            (hsPkgs.scotty)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uuid-types)
            (hsPkgs.warp)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.wai-extra)
            ];
          };
        };
      };
    }