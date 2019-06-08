{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "indent"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ole Krüger 2018";
      maintainer = "haskell-indent@vprsm.de";
      author = "Ole Krüger";
      homepage = "";
      url = "";
      synopsis = "Fix your indentation.";
      description = "Fix your indentation with this dead simple tool.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.text) ]; };
      exes = {
        "indent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.indent)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }