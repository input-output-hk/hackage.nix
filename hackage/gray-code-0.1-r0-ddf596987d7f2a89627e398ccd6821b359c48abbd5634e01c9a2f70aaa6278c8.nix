{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gray-code";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/hs-gray-code";
      url = "";
      synopsis = "Gray code encoder/decoder.";
      description = "Gray code is a binary numeral system where two successive numbers\ndiffer in only one bit. This package allows to convert Haskell\nnumbers to one of the possible Gray codes and back.";
      buildType = "Simple";
    };
    components = {
      "gray-code" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }