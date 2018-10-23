{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "string-class";
        version = "0.1.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "String class library";
      description = "String class library";
      buildType = "Simple";
    };
    components = {
      "string-class" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.tagged)
        ];
      };
    };
  }