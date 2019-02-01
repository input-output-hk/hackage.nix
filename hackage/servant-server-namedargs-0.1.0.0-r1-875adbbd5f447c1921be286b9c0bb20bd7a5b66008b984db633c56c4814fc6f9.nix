{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-server-namedargs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cporeskydev@gmail.com";
      author = "Cullin Poresky";
      homepage = "https://gitlab.com/sciencei/servant-server-namedargs";
      url = "";
      synopsis = "Automatically derive API server functions with named and optional parameters";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.servant-namedargs)
          (hsPkgs.named)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.string-conversions)
          (hsPkgs.http-api-data)
          ];
        };
      };
    }