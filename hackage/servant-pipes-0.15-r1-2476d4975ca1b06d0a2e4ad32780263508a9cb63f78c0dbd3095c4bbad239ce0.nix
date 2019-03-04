{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-pipes"; version = "0.15"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Servant Stream support for pipes";
      description = "Servant Stream support for pipes.\n\nProvides 'ToSourceIO' and 'FromSourceIO' instances for 'Proxy' and 'SafeT'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.servant)
          ];
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.http-media)
            (hsPkgs.servant)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.servant-pipes)
            (hsPkgs.pipes-bytestring)
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