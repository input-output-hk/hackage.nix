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
        name = "mtl-unleashed";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 David Fox";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/mtl-unleashed";
      url = "";
      synopsis = "MTL classes without the functional dependency";
      description = "Classes MonadState and MonadReader without the functional\ndependency from the monad to the contained type.  This allows\nmore flexibility to extract bits and pieces of state based on\ntype, but increases ambiguities that need to be resolved with\nextra type signatures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }