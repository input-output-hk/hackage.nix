{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tagchup"; version = "0.4.0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <tagchup@henning-thielemann.de>";
      author = "Henning Thielemann <tagchup@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/tagchup/";
      url = "";
      synopsis = "alternative package for processing of tag soups";
      description = "Tagchup is a package for processing XML, HTML, XHTML documents\nthat can also be malformed.\nIt allows parsing, formatting and retrieval of such document.\nAll functions should be as lazy as possible.\n\nI use a custom data structure based on types from xml-basic\nfor easy interchange with the wraxml package.\n\nIts lazy monadic parser should be more comprehensible and easier to extend\nthan the one of tagsoup-0.6.\nIt also handles XML processing instructions and CDATA sections correctly.\n\nThe name Tagchup resembles Ketchup.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.xml-basic)
          (hsPkgs.transformers)
          (hsPkgs.explicit-exception)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
          ];
        };
      exes = {
        "validate-tagchup" = {
          depends = [ (hsPkgs.tagchup) (hsPkgs.xml-basic) (hsPkgs.base) ];
          };
        "escape-html" = {
          depends = [
            (hsPkgs.tagchup)
            (hsPkgs.xml-basic)
            (hsPkgs.base)
            ] ++ (pkgs.lib).optional (flags.buildexamples) (hsPkgs.hxt);
          };
        "strip-html" = {
          depends = [ (hsPkgs.tagchup) (hsPkgs.xml-basic) (hsPkgs.base) ];
          };
        };
      tests = {
        "tagchuptest" = {
          depends = [ (hsPkgs.tagchup) (hsPkgs.xml-basic) (hsPkgs.base) ];
          };
        };
      benchmarks = {
        "tagchupspeed" = {
          depends = [
            (hsPkgs.old-time)
            (hsPkgs.xml-basic)
            (hsPkgs.data-accessor)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            ];
          };
        };
      };
    }