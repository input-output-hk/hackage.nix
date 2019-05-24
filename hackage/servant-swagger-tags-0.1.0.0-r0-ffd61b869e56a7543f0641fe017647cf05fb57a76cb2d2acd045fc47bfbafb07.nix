{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-swagger-tags"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Daishi Nakajima";
      maintainer = "nakaji.dayo@mail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/servant-swagger-tags#readme";
      url = "";
      synopsis = "Swagger Tags for Servant";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.servant-mock)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.lens)
          ];
        };
      };
    }