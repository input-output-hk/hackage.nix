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
        name = "data-basic";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nikola@henezi.com, luka.horvat9@gmail.com";
      author = "Nikola Henezi, Luka Horvat";
      homepage = "https://gitlab.com/haskell-hr/basic";
      url = "";
      synopsis = "A database library with a focus on ease of use, type safety and useful error messages";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "data-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.simple-effects)
          (hsPkgs.lens)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          (hsPkgs.hssqlppp)
          (hsPkgs.template-haskell)
          (hsPkgs.cases)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.overload)
          (hsPkgs.aeson)
          (hsPkgs.lens-aeson)
          (hsPkgs.binary)
          (hsPkgs.string-conv)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "basic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic)
            (hsPkgs.postgresql-simple)
            (hsPkgs.time)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }