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
        name = "hierarchy";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/hierarchy#readme";
      url = "";
      synopsis = "Predicated traversal of generated trees";
      description = "Predicated traversal of generated trees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.2.0") (hsPkgs.semigroups);
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.mmorph)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.2.0") (hsPkgs.semigroups);
        };
      };
    };
  }