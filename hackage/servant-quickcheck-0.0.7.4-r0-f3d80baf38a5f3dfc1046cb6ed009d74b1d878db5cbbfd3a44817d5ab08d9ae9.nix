{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { long-tests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-quickcheck"; version = "0.0.7.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "";
      url = "";
      synopsis = "QuickCheck entire APIs";
      description = "This packages provides QuickCheck properties that are tested across an entire\nAPI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.clock)
          (hsPkgs.data-default-class)
          (hsPkgs.hspec)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-server)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.warp)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base-compat-batteries)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.http-client)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-io)
            (hsPkgs.servant)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-client)
            (hsPkgs.servant-quickcheck)
            (hsPkgs.servant-server)
            (hsPkgs.transformers)
            (hsPkgs.warp)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.servant-quickcheck)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            ];
          };
        };
      };
    }