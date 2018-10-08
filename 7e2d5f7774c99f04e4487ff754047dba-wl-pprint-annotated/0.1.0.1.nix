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
      specVersion = "1.10";
      identifier = {
        name = "wl-pprint-annotated";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2012 Edward A. Kmett, 2000 Daan Leijen";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/wl-pprint-annotated#readme";
      url = "";
      synopsis = "Pretty printer with annotation support";
      description = "Wadler/Leijen pretty printer with support for annotations and modernized API. Annotations are useful for coloring. See wl-pprint-console.";
      buildType = "Simple";
    };
    components = {
      "wl-pprint-annotated" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "wl-pprint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.wl-pprint-annotated)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
        };
      };
    };
  }