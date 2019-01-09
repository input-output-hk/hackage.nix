{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgrest-ws"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/diogob/postgrest-ws#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hasql-pool)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
          (hsPkgs.postgrest)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.aeson)
          (hsPkgs.string-conversions)
          ];
        };
      exes = {
        "postgrest-ws" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.string-conversions)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.warp)
            (hsPkgs.unix)
            (hsPkgs.jwt)
            (hsPkgs.postgrest)
            (hsPkgs.postgrest-ws)
            (hsPkgs.postgresql-libpq)
            ];
          };
        };
      tests = {
        "postgrest-ws-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.postgrest-ws) ];
          };
        };
      };
    }