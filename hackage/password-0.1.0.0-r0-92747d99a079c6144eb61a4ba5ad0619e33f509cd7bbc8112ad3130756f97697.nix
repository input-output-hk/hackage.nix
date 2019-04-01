{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "password"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/password/password#readme";
      url = "";
      synopsis = "plain-text password and hashed password datatypes and functions";
      description = "A library providing types for working with plain-text and hashed passwords, generally from web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.scrypt) (hsPkgs.text) ];
        };
      tests = {
        "password-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.password)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        "password-tasty" = { depends = [ (hsPkgs.base) (hsPkgs.password) ]; };
        };
      };
    }