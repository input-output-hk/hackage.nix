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
      specVersion = "1.8";
      identifier = {
        name = "safecopy-store";
        version = "0.9.5";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Anton Gushcha <ncrashed@gmail.com>";
      author = "David Himmelstrup, Felipe Lessa, Anton Gushcha";
      homepage = "https://github.com/NCrashed/safecopy";
      url = "";
      synopsis = "Binary serialization with version control.";
      description = "Fork of safecopy that uses store instead of cereal.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.store)
          (hsPkgs.store-core)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "instances" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.store)
            (hsPkgs.template-haskell)
            (hsPkgs.safecopy-store)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.lens)
            (hsPkgs.lens-action)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }