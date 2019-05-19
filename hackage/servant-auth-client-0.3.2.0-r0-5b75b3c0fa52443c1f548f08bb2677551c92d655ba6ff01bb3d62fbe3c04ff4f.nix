{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { servant-client-core = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-auth-client"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/haskell-servant/servant-auth#readme";
      url = "";
      synopsis = "servant-client/servant-auth compatibility";
      description = "This package provides instances that allow generating clients from\n<https://hackage.haskell.org/package/servant servant>\nAPIs that use\n<https://hackage.haskell.org/package/servant-auth servant-auth's> @Auth@ combinator.\n\nFor a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.servant-auth)
          (hsPkgs.servant)
          ] ++ (if flags.servant-client-core
          then [ (hsPkgs.servant-client-core) (hsPkgs.containers) ]
          else [ (hsPkgs.servant-client) ]);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant-client)
            (hsPkgs.servant-auth)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-client)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.servant-auth-server)
            (hsPkgs.servant-server)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.jose)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }