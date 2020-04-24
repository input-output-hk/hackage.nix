{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "templatepg"; version = "0.2.8"; };
      license = "MIT";
      copyright = "2010, 2011, 2012, 2013, 2015 Chris Forno";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }