{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tsweb"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "";
      url = "";
      synopsis = "An API binding Web.Spock to Database.Beam";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.beam-postgres)
          (hsPkgs.bytestring)
          (hsPkgs.clay)
          (hsPkgs.cryptonite)
          (hsPkgs.http-api-data)
          (hsPkgs.hvect)
          (hsPkgs.postgresql-simple)
          (hsPkgs.pretty-simple)
          (hsPkgs.reroute)
          (hsPkgs.resource-pool)
          (hsPkgs.Spock)
          (hsPkgs.Spock-core)
          (hsPkgs.stm-containers)
          (hsPkgs.superrecord)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.beam-core)
            (hsPkgs.beam-postgres)
            (hsPkgs.bytestring)
            (hsPkgs.clay)
            (hsPkgs.cryptonite)
            (hsPkgs.http-api-data)
            (hsPkgs.hvect)
            (hsPkgs.postgresql-simple)
            (hsPkgs.pretty-simple)
            (hsPkgs.reroute)
            (hsPkgs.resource-pool)
            (hsPkgs.Spock)
            (hsPkgs.Spock-core)
            (hsPkgs.stm-containers)
            (hsPkgs.superrecord)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }