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
      specVersion = "1.10";
      identifier = {
        name = "desert";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 zjhmale";
      maintainer = "zjhmale@gmail.com";
      author = "zjhmale";
      homepage = "https://github.com/zjhmale/desert";
      url = "";
      synopsis = "a simple build tool for OCaml projects";
      description = "Check out <https://github.com/zjhmale/desert#readme the readme> for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.http-conduit)
          (hsPkgs.MissingH)
        ];
      };
      exes = {
        "desert" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.desert)
          ];
        };
      };
      tests = {
        "desert-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.desert)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }