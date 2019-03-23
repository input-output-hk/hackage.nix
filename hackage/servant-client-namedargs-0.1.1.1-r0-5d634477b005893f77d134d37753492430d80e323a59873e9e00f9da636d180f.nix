{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-client-namedargs"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cporeskydev@gmail.com";
      author = "Cullin Poresky";
      homepage = "https://gitlab.com/sciencei/servant-client-namedargs";
      url = "";
      synopsis = "Automatically derive API client functions with named and optional parameters";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-namedargs)
          (hsPkgs.named)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.named)
            (hsPkgs.servant-namedargs)
            (hsPkgs.servant-server-namedargs)
            (hsPkgs.servant-client-namedargs)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }