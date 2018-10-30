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
      specVersion = "0";
      identifier = {
        name = "YamlReference";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "www.ben-kiki.org/oren/YamlReference";
      url = "www.ben-kiki.org/oren/YamlReference/YamlReference-0.1.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@) that\nallows accessing it from the command line, converting YAML\nfiles to YEAST tokens. This is intended to be more of an\n\\\"executable specification\\\" for YAML rather than an actual\nbasis for YAML tool chains. That said, it is possible to build\ninteresting tools on top of it, such as the @yeast2html@ YAML\nsyntax visualizer (contained in this package), pretty\nprinters, etc. This is a streaming parser that will\n\\\"immediately\\\" begin to generate output, but it has a memoy\nleak (actually, retention) problem that prevents it from being\napplied to \\\"large\\\" files. To debug this with minimal syntax\nproductions use @yes \"#\" | yaml2yeast -p debug-leak@.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
          (hsPkgs.regex-compat)
          (hsPkgs.dlist)
        ];
      };
      exes = {
        "yaml2yeast" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.regex-compat)
            (hsPkgs.dlist)
          ];
        };
        "yaml2yeast-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.regex-compat)
            (hsPkgs.dlist)
          ];
        };
      };
    };
  }