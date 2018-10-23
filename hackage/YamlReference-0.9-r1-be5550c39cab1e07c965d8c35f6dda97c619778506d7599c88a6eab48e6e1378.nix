{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "YamlReference";
        version = "0.9";
      };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007, 2008";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "http://www.ben-kiki.org/oren/YamlReference";
      url = "http://www.ben-kiki.org/oren/YamlReference/YamlReference-0.9.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@)\nthat allows accessing it from the command line, converting\nYAML files to YEAST tokens. This is intended to be more of\nan \\\"executable specification\\\" for YAML rather than an\nactual basis for YAML tool chains. That said, it is\npossible to build interesting tools on top of it, such as\nthe @yeast2html@ YAML syntax visualizer (contained in this\npackage), pretty printers, etc. This is a streaming parser\nthat will \\\"immediately\\\" begin to generate output. Updated\nto be compatible with the April 6, 2008 working draft.";
      buildType = "Custom";
    };
    components = {
      "YamlReference" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.regex-compat)
          (hsPkgs.dlist)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "yaml2yeast" = {};
        "yaml2yeast-test" = {
          depends  = pkgs.lib.optional (flags.small_base) (hsPkgs.directory);
        };
      };
    };
  }