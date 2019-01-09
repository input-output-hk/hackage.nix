{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-zeppelin-client"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Martin Allen, Ben Weitzman";
      maintainer = "martin[dot]allen26[at]gmail.com";
      author = "Martin Allen, Ben Weitzman";
      homepage = "https://github.com/martyall/servant-zeppelin#readme";
      url = "";
      synopsis = "Client library for servant-zeppelin combinators.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.singletons)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-zeppelin)
          (hsPkgs.text)
          ];
        };
      tests = {
        "servant-zeppelin-cient-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.servant-zeppelin)
            (hsPkgs.servant-zeppelin-server)
            (hsPkgs.servant-zeppelin-client)
            (hsPkgs.singletons)
            (hsPkgs.string-conversions)
            (hsPkgs.warp)
            (hsPkgs.wai-extra)
            ];
          };
        };
      };
    }