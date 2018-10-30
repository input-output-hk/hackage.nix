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
      specVersion = "0";
      identifier = {
        name = "Safe";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/projects/libraries.php";
      url = "";
      synopsis = "Library for safe (pattern match free) functions";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }