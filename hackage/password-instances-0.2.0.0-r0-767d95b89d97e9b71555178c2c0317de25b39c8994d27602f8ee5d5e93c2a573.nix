{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "password-instances"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/password/password-instances#readme";
      url = "";
      synopsis = "typeclass instances for password package";
      description = "A library providing typeclass instances for common libraries for the types from the password package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-api-data)
          (hsPkgs.password)
          (hsPkgs.persistent)
          ];
        };
      tests = {
        "password-instances-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        "password-instances-tasty" = {
          depends = [ (hsPkgs.base) (hsPkgs.password-instances) ];
          };
        };
      };
    }