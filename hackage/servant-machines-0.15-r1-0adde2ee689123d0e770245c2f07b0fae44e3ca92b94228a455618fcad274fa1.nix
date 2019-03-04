{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-machines"; version = "0.15"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Servant Stream support for machines";
      description = "Servant Stream support for machines.\n\nProvides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.machines)
          (hsPkgs.mtl)
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
            (hsPkgs.machines)
            (hsPkgs.servant-machines)
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