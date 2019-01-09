{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "templatepg"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "2010, 2011, 2012, 2013 Chris Forno";
      maintainer = "jekor@jekor.com";
      author = "Chris Forno (jekor)";
      homepage = "https://github.com/jekor/templatepg";
      url = "https://github.com/jekor/templatepg/archive/master.tar.gz";
      synopsis = "A PostgreSQL access library with compile-time SQL type inference";
      description = "TemplatePG provides PostgreSQL access from Haskell via the\nPostgreSQL protocol. It also provides a higher-level Template\nHaskell interface. It eliminates a class of runtime errors by\nchecking queries against a PostgreSQL database at compile-time.\nThis also reduces boilerplate code for dealing with query\nresults, as the type and number of result columns are known at\ncompile-time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-posix)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }