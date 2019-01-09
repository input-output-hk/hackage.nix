{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-conduit"; version = "0.15"; };
      license = "BSD-3-Clause";
      copyright = "2018 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Servant Stream support for conduit.";
      description = "Servant Stream support for conduit.\n\nProvides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.http-media)
            (hsPkgs.resourcet)
            (hsPkgs.servant)
            (hsPkgs.servant-conduit)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.http-client)
            ];
          };
        };
      };
    }