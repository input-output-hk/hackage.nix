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
        name = "type-tree";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "https://github.com/pikajude/type-tree";
      url = "";
      synopsis = "Tree representations of datatypes";
      description = "@type-tree@ provides TH splices for generating tree representations of\nthe types contained in datatypes. This is useful for, for example,\ngenerating class instances for a deeply nested datatype.";
      buildType = "Custom";
    };
    components = {
      "type-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.base-compat)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }