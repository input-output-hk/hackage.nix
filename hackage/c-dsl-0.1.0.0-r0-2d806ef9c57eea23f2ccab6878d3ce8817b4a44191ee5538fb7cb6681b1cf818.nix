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
        name = "c-dsl";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A higher level DSL on top of language-c";
      description = "This DSL is meant to make it easier to write language-c's DSL by providing simple\nfunctions/operators for writing C AST's in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.language-c)
        ];
      };
    };
  }