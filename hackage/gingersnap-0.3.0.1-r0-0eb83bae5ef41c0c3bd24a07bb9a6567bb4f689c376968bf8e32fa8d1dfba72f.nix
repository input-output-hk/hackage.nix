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
        name = "gingersnap";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "TomMurphy";
      author = "Tinybop Labs, tom-bop";
      homepage = "";
      url = "";
      synopsis = "Consistent and safe JSON APIs with snap-core and (by default) postgresql-simple";
      description = "Straightforward JSON API tools and idioms for snap-core and datastore access\n(by default PostgreSQL via postgresql-simple), that provide:\n\n- Safe access to pools of DB connections (preventing connection leaks)\n- Simple and consistent JSON responses for successes and failures\n(including unexpected failures)\n- An optional read-only/maintenance mode for keeping services up during\ne.g. database migrations\n\nSee the README for a tutorial and example use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.http-types)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "gingersnap-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.gingersnap)
            (hsPkgs.microspec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.snap-core)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }