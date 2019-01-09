{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "hamsql"; version = "0.9.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014-2016 Michael Herold et al.";
      maintainer = "Michael Herold <quabla@hemio.de>";
      author = "Michael Herold <quabla@hemio.de>";
      homepage = "https://git.hemio.de/hemio/hamsql";
      url = "";
      synopsis = "Interpreter for SQL-structure definitions in YAML (YamSql)";
      description = "Interpreter for SQL-structure definitions in YAML (YamSql)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.doctemplates)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.frontmatter)
          (hsPkgs.groom)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ];
        };
      exes = { "hamsql" = { depends = [ (hsPkgs.base) (hsPkgs.hamsql) ]; }; };
      tests = {
        "hamsql-tests" = { depends = [ (hsPkgs.base) (hsPkgs.hamsql) ]; };
        };
      };
    }