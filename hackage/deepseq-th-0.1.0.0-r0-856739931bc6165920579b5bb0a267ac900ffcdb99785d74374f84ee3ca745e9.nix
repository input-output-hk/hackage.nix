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
        name = "deepseq-th";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Template Haskell based deriver for optimised NFData instances";
      description = "This package provides a Template Haskell based mechanism for\nderiving optimised NFData instances for custom data types. See\ndocumentation in \"Control.DeepSeq.TH\" for more information.\n";
      buildType = "Simple";
    };
    components = {
      "deepseq-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }