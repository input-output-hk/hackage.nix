{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-audit"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "";
      url = "";
      synopsis = "Parses a Persist Model file and produces Audit Models";
      description = "Simplify database audits";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.mongoDB)
          (hsPkgs.persistent)
          (hsPkgs.persistent-mongoDB)
          (hsPkgs.persistent-parser)
          (hsPkgs.persistent-template)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "persistent-audit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.getopt-generics)
            (hsPkgs.persistent-audit)
            (hsPkgs.persistent-parser)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.persistent)
            (hsPkgs.persistent-audit)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-parser)
            (hsPkgs.persistent-template)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }