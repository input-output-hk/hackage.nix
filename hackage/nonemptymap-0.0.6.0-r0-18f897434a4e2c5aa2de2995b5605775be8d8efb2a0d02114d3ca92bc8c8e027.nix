{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nonemptymap"; version = "0.0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Christopher Davenport";
      maintainer = "Chris@ChristopherDavenport.tech";
      author = "Christopher Davenport";
      homepage = "https://github.com/ChristopherDavenport/nonemptymap#readme";
      url = "";
      synopsis = "A NonEmptyMap Implementation";
      description = "This package intends to allow general use of a NonEmptyMap\nwhich is very beneficial as sometimes you want the functionality\nthis provides.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.semigroupoids) ];
        };
      };
    }