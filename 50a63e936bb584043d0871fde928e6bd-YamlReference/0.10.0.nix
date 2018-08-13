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
      specVersion = "1.8";
      identifier = {
        name = "YamlReference";
        version = "0.10.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007, 2008, 2016";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "http://www.ben-kiki.org/oren/YamlReference";
      url = "http://www.ben-kiki.org/oren/YamlReference/YamlReference-0.10.0.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@)\nthat allows accessing it from the command line, converting\nYAML files to YEAST tokens. This is intended to be more of\nan \\\"executable specification\\\" for YAML rather than an\nactual basis for YAML tool chains. That said, it is\npossible to build interesting tools on top of it, such as\nthe @yeast2html@ YAML syntax visualizer (contained in this\npackage), pretty printers, etc. This is a streaming parser\nthat will \\\"immediately\\\" begin to generate output.\nUpdated to be compatible with the final Apr 1, 2009 YAML\n1.2 spec.";
      buildType = "Custom";
    };
    components = {
      "YamlReference" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.regex-compat)
          (hsPkgs.dlist)
        ];
      };
      exes = {
        "yaml2yeast" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.regex-compat)
            (hsPkgs.dlist)
          ];
        };
      };
      tests = {
        "yaml2yeast-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashmap)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.regex-compat)
            (hsPkgs.dlist)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }