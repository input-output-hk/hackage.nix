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
        name = "safecopy";
        version = "0.9.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Felipe Lessa";
      homepage = "https://github.com/acid-state/safecopy";
      url = "";
      synopsis = "Binary serialization with version control.";
      description = "An extension to Data.Serialize with built-in version control.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.gt "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "instances" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.template-haskell)
            (hsPkgs.safecopy)
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
          ];
        };
      };
    };
  }