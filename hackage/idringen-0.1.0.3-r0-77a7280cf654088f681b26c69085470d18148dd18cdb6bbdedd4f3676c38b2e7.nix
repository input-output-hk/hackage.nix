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
        name = "idringen";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 zjhmale";
      maintainer = "zjhmale@gmail.com";
      author = "Zheng Jihui";
      homepage = "https://github.com/zjhmale/idringen";
      url = "";
      synopsis = "A project manage tool for Idris.";
      description = "Check out <https://github.com/zjhmale/idringen#readme the readme> for documentation.";
      buildType = "Simple";
    };
    components = {
      "idringen" = {
        depends  = [
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
        "idrin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.idringen)
          ];
        };
      };
      tests = {
        "idrin-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.idringen)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }