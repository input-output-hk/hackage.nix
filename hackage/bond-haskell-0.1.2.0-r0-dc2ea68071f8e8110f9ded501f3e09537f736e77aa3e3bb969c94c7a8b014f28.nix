{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "bond-haskell";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Andrey Sverdlichenko";
      maintainer = "Andrey Sverdlichenko <blaze@ruddy.ru>";
      author = "Andrey Sverdlichenko <blaze@ruddy.ru>";
      homepage = "http://github.com/rblaze/bond-haskell#readme";
      url = "";
      synopsis = "Runtime support for BOND serialization";
      description = "Bond is a cross-platform framework for handling schematized\ndata. It supports cross-language de/serialization and\npowerful generic mechanisms for efficiently manipulating\ndata.\n\nThis package contains a runtime library used by generated\nHaskell code.";
      buildType = "Custom";
    };
    components = {
      "bond-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bond-haskell-compiler)
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.extra)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "bond-haskell-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bond-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }