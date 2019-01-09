{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "TotalMap"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ed@wastell.co.uk";
      author = "Ed Wastell";
      homepage = "";
      url = "";
      synopsis = "A total map datatype";
      description = "Provides a datatype representing a total map using an enum type as keys";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.lens)
          (hsPkgs.adjunctions)
          (hsPkgs.distributive)
          ];
        };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.TotalMap)
            (hsPkgs.generics-sop)
            (hsPkgs.lens)
            (hsPkgs.adjunctions)
            (hsPkgs.distributive)
            (hsPkgs.markdown-unlit)
            ];
          };
        };
      };
    }