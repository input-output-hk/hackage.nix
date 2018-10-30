{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bytestring-in-base = true;
      split-base = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bloomfilter";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/bloomfilter";
      url = "";
      synopsis = "Pure and impure Bloom Filter implementations.";
      description = "Pure and impure Bloom Filter implementations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]) ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }