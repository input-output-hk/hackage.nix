{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "eventsource-store-specs"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yo.eight@gmail.com";
      author = "Yorick Laupa";
      homepage = "https://gitlab.com/YoEight/eventsource-api-hs";
      url = "";
      synopsis = "Provides common test specification for Store implementation.";
      description = "Provides common test specification for Store implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.eventsource-api)
          (hsPkgs.mtl)
          (hsPkgs.streaming)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hspec)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.uuid)
          ];
        };
      };
    }