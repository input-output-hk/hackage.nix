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
        name = "gray-code";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/astanin/hs-gray-code";
      url = "";
      synopsis = "Gray code encoder/decoder.";
      description = "Gray code is a binary numeral system where two successive numbers\ndiffer in only one bit.\n\nThis package allows to convert numbers to one of the possible Gray\ncodes and back. Two binary representations of a number are supported:\n@[Bool]@ and types of @FiniteBits@ type class.\n@FiniteBits@ is the default implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "test-qc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }