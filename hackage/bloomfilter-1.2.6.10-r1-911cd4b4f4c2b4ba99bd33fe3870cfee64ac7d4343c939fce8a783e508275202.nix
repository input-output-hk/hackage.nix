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
        name = "bloomfilter";
        version = "1.2.6.10";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/bloomfilter";
      url = "";
      synopsis = "Pure and impure Bloom Filter implementations.";
      description = "Pure and impure Bloom Filter implementations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }