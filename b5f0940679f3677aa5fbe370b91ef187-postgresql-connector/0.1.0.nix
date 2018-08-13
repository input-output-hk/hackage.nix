{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-connector";
        version = "0.1.0";
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
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resourcet)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }