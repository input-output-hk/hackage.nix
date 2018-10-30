{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      use-pkg-config = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "postgresql-libpq";
        version = "0.9.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Grant Monroe\n(c) 2011 Leon P Smith";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Grant Monroe, Leon P Smith, Joey Adams";
      homepage = "http://github.com/lpsmith/postgresql-libpq";
      url = "";
      synopsis = "low-level binding to libpq";
      description = "This is a binding to libpq: the C application\nprogrammer's interface to PostgreSQL. libpq is a\nset of library functions that allow client\nprograms to pass queries to the PostgreSQL\nbackend server and to receive the results of\nthese queries.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = pkgs.lib.optionals (!flags.use-pkg-config) ([
          (pkgs."pq")
        ] ++ pkgs.lib.optionals (system.isOpenbsd) [
          (pkgs."crypto")
          (pkgs."ssl")
        ]);
        pkgconfig = pkgs.lib.optional (flags.use-pkg-config) (pkgconfPkgs.libpq);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }