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
      specVersion = "1.10";
      identifier = {
        name = "haskey-mtl";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Henri Verroken, Steven Keuchel";
      maintainer = "steven.keuchel@gmail.com";
      author = "Henri Verroken, Steven Keuchel";
      homepage = "https://github.com/haskell-haskey";
      url = "";
      synopsis = "A monad transformer supporting Haskey transactions.";
      description = "This library provides a monad transformer supporting Haskey transactions,\nwith default lifted instances for all mtl monad transformers.\n\nFor more information on how to use this package, visit\n<https://github.com/haskell-haskey/haskey-mtl>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.haskey-btree)
          (hsPkgs.haskey)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "haskey-mtl-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskey)
            (hsPkgs.haskey-btree)
            (hsPkgs.haskey-mtl)
            (hsPkgs.binary)
            (hsPkgs.exceptions)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }