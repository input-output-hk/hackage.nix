{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "tagsoup";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/projects/libraries.php";
      url = "";
      synopsis = "Parsing and extracting information from (possibly malformed) HTML documents";
      description = "";
      buildType = "Custom";
    };
    components = {
      "tagsoup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
      };
    };
  }