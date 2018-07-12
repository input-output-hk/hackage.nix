{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-session-postgresql";
          version = "0.2.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Hans-Christian Esperer";
        maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
        author = "Hans-Christian Esperer <hc@hcesperer.org>";
        homepage = "https://github.com/hce/postgresql-session#readme";
        url = "";
        synopsis = "PostgreSQL backed Wai session store";
        description = "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.";
        buildType = "Simple";
      };
      components = {
        "wai-session-postgresql" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cookie
            hsPkgs.data-default
            hsPkgs.entropy
            hsPkgs.postgresql-simple
            hsPkgs.resource-pool
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-session
          ];
        };
        tests = {
          "postgresql-session-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.postgresql-simple
              hsPkgs.text
              hsPkgs.wai-session
              hsPkgs.wai-session-postgresql
            ];
          };
        };
      };
    }