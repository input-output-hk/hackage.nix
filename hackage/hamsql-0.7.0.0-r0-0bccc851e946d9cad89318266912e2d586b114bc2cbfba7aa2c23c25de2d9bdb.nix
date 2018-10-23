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
        name = "hamsql";
        version = "0.7.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2014-2016 Michael Herold et al.";
      maintainer = "Michael Herold <quabla@hemio.de>";
      author = "Michael Herold <quabla@hemio.de>";
      homepage = "https://git.hemio.de/hemio/hamsql";
      url = "";
      synopsis = "HamSql";
      description = "Interpreter for SQL-structure definitions in Yaml (YamSql)";
      buildType = "Simple";
    };
    components = {
      "hamsql" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.frontmatter)
          (hsPkgs.groom)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pandoc)
          (hsPkgs.postgresql-simple)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "hamsql" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hamsql)
          ];
        };
      };
      tests = {
        "hamsql-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hamsql)
          ];
        };
      };
    };
  }