{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "YamlReference";
          version = "0.9.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "Oren Ben-Kiki 2007, 2008";
        maintainer = "yaml-oren@ben-kiki.org";
        author = "Oren Ben-Kiki";
        homepage = "http://www.ben-kiki.org/oren/YamlReference";
        url = "http://www.ben-kiki.org/oren/YamlReference/YamlReference-0.9.2.tar.gz";
        synopsis = "YAML reference implementation";
        description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@)\nthat allows accessing it from the command line, converting\nYAML files to YEAST tokens. This is intended to be more of\nan \\\"executable specification\\\" for YAML rather than an\nactual basis for YAML tool chains. That said, it is\npossible to build interesting tools on top of it, such as\nthe @yeast2html@ YAML syntax visualizer (contained in this\npackage), pretty printers, etc. This is a streaming parser\nthat will \\\"immediately\\\" begin to generate output.\nUpdated to be compatible with the final Apr 1, 2009 YAML\n1.2 spec.";
        buildType = "Custom";
      };
      components = {
        YamlReference = {
          depends  = [
            hsPkgs.HUnit
            hsPkgs.regex-compat
            hsPkgs.dlist
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          yaml2yeast = {};
          yaml2yeast-test = {
            depends  = pkgs.lib.optional _flags.small_base hsPkgs.directory;
          };
        };
      };
    }