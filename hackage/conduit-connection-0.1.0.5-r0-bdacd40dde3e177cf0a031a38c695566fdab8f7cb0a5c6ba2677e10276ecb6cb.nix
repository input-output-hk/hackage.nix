{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-connection"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "slomo@coaxion.net";
      author = "Sebastian Dröge";
      homepage = "https://github.com/sdroege/conduit-connection";
      url = "";
      synopsis = "Conduit source and sink for Network.Connection.";
      description = "@conduit-connection@ provides a \"Data.Conduit\" source and sink based on\n\"Network.Connection\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.connection)
          ];
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.conduit-connection)
            ];
          };
        };
      };
    }