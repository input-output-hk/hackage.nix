{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-generics"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Gagandeep Bhatia";
      maintainer = "gagandeepbhatia.in@gmail.com";
      author = "Gagandeep Bhatia";
      homepage = "https://github.com/VinylRecords/vinyl-generics";
      url = "";
      synopsis = "Convert plain records to vinyl (and vice versa), generically.";
      description = "Convert plain records to @vinyl@ and vice versa, via @GHC.Generics@ and @generics-sop@/@records-sop@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.vinyl)
          (hsPkgs.records-sop)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vinyl-generics)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.generics-sop)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.records-sop)
            (hsPkgs.aeson)
            ];
          };
        };
      };
    }