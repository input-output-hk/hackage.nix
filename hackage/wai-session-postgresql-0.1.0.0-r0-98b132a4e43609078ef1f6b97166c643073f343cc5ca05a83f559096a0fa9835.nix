{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-session-postgresql";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer hc@hcesperer.org";
      author = "Hans-Christian Esperer hc@hcesperer.org";
      homepage = "https://github.com/hce/postgresql-session";
      url = "";
      synopsis = "PostgreSQL backed Wai session store";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.postgresql-simple)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai-session)
        ];
      };
      tests = {
        "postgresql-session-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.postgresql-session)
          ];
        };
      };
    };
  }