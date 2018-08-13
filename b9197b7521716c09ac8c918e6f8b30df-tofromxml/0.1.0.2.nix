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
        name = "tofromxml";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Robert Reitmeier";
      maintainer = "Robert Reitmeier <concat [\"public\",\" a t \",\"thinking-machines\",\"dot\",\".net\"]>";
      author = "Robert Reitmeier";
      homepage = "";
      url = "";
      synopsis = "Reading and writing Haskell data from and to XML";
      description = "A library for reading and writing Haskell data from and to XML. Only prerequisite is that the data type derives Generic.";
      buildType = "Simple";
    };
    components = {
      "tofromxml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hexpat-pickle)
          (hsPkgs.hexpat)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tofromxml)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.hexpat)
            (hsPkgs.hexpat-pickle)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }