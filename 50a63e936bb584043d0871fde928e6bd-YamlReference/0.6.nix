{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "YamlReference";
        version = "0.6";
      };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "www.ben-kiki.org/oren/YamlReference";
      url = "www.ben-kiki.org/oren/YamlReference/YamlReference-0.6.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@)\nthat allows accessing it from the command line, converting\nYAML files to YEAST tokens. This is intended to be more of\nan \\\"executable specification\\\" for YAML rather than an\nactual basis for YAML tool chains. That said, it is\npossible to build interesting tools on top of it, such as\nthe @yeast2html@ YAML syntax visualizer (contained in this\npackage), pretty printers, etc. This is a streaming parser\nthat will \\\"immediately\\\" begin to generate output. The\nmemory leak that existed in previous version has been\nplugged. Package was updated for Cabal version 1.2 and a\nbug handling indentation in mapping keys was fixed.";
      buildType = "Custom";
    };
    components = {
      "YamlReference" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.regex-compat)
          (hsPkgs.dlist)
        ] ++ (if _flags.small_base
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
          depends  = pkgs.lib.optional (_flags.small_base) (hsPkgs.directory);
        };
      };
    };
  }