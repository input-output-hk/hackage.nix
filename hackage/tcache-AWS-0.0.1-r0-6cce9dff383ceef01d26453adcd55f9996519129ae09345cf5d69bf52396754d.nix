{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "tcache-AWS"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Alberto Gómez Corona";
      maintainer = "Alberto Gómez Corona";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "tcache  using Amazon Web Services as default persistence mechanism";
      description = "See examples in \"Data.TCache.AWS\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.TCache)
          (hsPkgs.aws)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.network)
          (hsPkgs.text)
          ];
        };
      };
    }