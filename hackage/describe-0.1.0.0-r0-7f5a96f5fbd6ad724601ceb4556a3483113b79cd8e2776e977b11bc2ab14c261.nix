{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "describe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "n/a";
      author = "Riuga";
      homepage = "https://github.com/riugabachi/describe";
      url = "";
      synopsis = "Combinators for describing binary data structures";
      description = "Combinators for describing binary data structures, which eliminate the boilerplate of having to write isomorphic Get and Put instances. Please see the Github page for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.cereal) (hsPkgs.bytestring) ];
        };
      tests = {
        "describe-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.describe)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }