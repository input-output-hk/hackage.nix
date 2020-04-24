{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hashable"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fox@ucw.cz";
      author = "Milan Straka";
      homepage = "http://fox.auryn.cz/darcs/hashable/";
      url = "";
      synopsis = "Class Hashable providing a hash method.";
      description = "This package provides a class 'Hashable', which contains\none method @'hash' :: 'Hashable' a => a -> 'Int'@, which\nreturns the hash of the given element.\n\nThe instances for various integral types, 'String' and 'ByteString'\nare provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }