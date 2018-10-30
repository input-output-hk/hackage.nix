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
        name = "symbol";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2012 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "A 'Symbol' type for fast symbol comparison.";
      description = "Provides a 'Symbol' data type allowing fast symbol comparisons\nand functions for interning symbols and recovering their\n'String' representation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.syb)
        ];
      };
    };
  }