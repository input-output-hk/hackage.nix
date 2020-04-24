{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "gray-code"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/hs-gray-code";
      url = "";
      synopsis = "Gray code encoder/decoder.";
      description = "Gray code is a binary numeral system where two successive numbers\ndiffer in only one bit.\n\nThis package allows to convert numbers to one of the possible Gray\ncodes and back. Two binary representations of a number are supported:\n@[Bool]@ and types of @Bits@ type class.\n@Bits@ is the default implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }