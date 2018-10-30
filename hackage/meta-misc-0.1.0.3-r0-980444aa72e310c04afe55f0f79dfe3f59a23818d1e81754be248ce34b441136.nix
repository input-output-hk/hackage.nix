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
      specVersion = "1.18";
      identifier = {
        name = "meta-misc";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "https://github.com/bairyn/meta-misc";
      url = "";
      synopsis = "Utility library providing miscellaneous meta-programming utilities.";
      description = "Utility library providing miscellaneous meta-programming utilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.loch-th)
        ];
      };
    };
  }