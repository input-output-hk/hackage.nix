{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "record-encode"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "ocramz fripost org";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/record-encode";
      url = "";
      synopsis = "Generic encoding of records";
      description = "Generic encoding of records. Provides a single function and two typeclasses to encode values of sum types as one-hot vectors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.generics-sop) (hsPkgs.vector) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.record-encode)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }