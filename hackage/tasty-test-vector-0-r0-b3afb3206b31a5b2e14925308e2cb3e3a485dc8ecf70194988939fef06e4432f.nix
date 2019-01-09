{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tasty-test-vector"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Test vector support for tasty.";
      description = "Many specifications provide test vectors for their algorithms, particularly\nspecifications for cryptographic primatives. These are like QuickCheck properties\nin that they provide some function input and check the output, but unlike QuickCheck\nthe inputs and expected results are predefined.\n\nThis library provides an interface for cleanly integrating such test vectors into\nthe 'tasty' test framework.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.tasty) ]; };
      };
    }