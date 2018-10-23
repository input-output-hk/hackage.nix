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
        name = "postgresql-connector";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Mark Fine";
      maintainer = "Mark Fine <mark.fine@gmail.com>";
      author = "Mark Fine";
      homepage = "http://github.com/mfine/postgresql-connector";
      url = "";
      synopsis = "Initial project postgresql-connector from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "postgresql-connector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }