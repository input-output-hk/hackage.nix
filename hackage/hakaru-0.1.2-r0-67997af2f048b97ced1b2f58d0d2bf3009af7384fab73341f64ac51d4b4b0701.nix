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
        name = "hakaru";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppaml@indiana.edu";
      author = "The Hakaru Team";
      homepage = "http://www.indiana.edu/~ppaml";
      url = "";
      synopsis = "A probabilistic programming embedded DSL";
      description = "Hakaru is an embedded DSL for performing probabilistic inference. It supports multiple inference backends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.logfloat)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.math-functions)
          (hsPkgs.vector)
          (hsPkgs.cassava)
          (hsPkgs.zlib)
          (hsPkgs.statistics)
          (hsPkgs.hmatrix)
          (hsPkgs.parsec)
        ];
      };
    };
  }