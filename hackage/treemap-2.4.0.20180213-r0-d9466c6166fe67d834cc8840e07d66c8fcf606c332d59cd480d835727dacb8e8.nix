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
      specVersion = "1.10";
      identifier = {
        name = "treemap";
        version = "2.4.0.20180213";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+treemap@autogeree.net>";
      author = "Julien Moutinho <julm+treemap@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "A tree of Data.Map.";
      description = "A tree of Data.Map,\nwhich is like a 'Map'\nbut whose key is now a 'NonEmpty' list of 'Map' keys (a 'Path')\nenabling the possibility to gather mapped values\nby 'Path' prefixes (inside a 'Node').";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mono-traversable)
          (hsPkgs.semigroups)
          (hsPkgs.strict)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "treemap-test" = {
          depends  = [
            (hsPkgs.treemap)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mono-traversable)
            (hsPkgs.semigroups)
            (hsPkgs.strict)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }