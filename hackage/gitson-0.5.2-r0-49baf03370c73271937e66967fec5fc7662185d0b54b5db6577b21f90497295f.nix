{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gitson"; version = "0.5.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2014-2015 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/gitson";
      url = "";
      synopsis = "A document store library for Git + JSON.";
      description = "A simple document store library for Git + JSON, based on Aeson. Uses command line git. Transactions use flock, so it's safe even across completely separate programs!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.errors)
          (hsPkgs.flock)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.conduit-extra)
          (hsPkgs.conduit-combinators)
          ];
        };
      tests = {
        "examples" = {
          depends = [ (hsPkgs.base) (hsPkgs.Glob) (hsPkgs.doctest) ];
          };
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gitson)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.gitson)
            (hsPkgs.aeson)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }