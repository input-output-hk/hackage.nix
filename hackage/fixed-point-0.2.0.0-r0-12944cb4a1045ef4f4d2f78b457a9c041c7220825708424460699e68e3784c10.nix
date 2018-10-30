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
      specVersion = "1.6";
      identifier = {
        name = "fixed-point";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Binary fixed-point arithmetic";
      description = "This package defines a type for binary\nfixed-precision arithmetic. Its interface is\nintended to be almost the same as the one\nprovided by Data.Fixed. The main differences are\nthat this is binary fixed-point and it's\npolymorphic in the underlying representation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }