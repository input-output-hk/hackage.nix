{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "arbor-postgres";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/arbor-postgres#readme";
      url = "";
      synopsis = "Convenience types and functions for postgresql-simple.";
      description = "Please see the README on Github at <https://github.com/arbor/arbor-postgres#readme>";
      buildType = "Simple";
    };
    components = {
      "arbor-postgres" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
        ];
      };
    };
  }