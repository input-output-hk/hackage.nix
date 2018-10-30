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
        name = "pretty-class";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://src.seereason.com/pretty-class";
      url = "";
      synopsis = "Extremely simple Pretty class";
      description = "I was unclear how to create instances of Language.Haskell.Pretty.Pretty because\nthe pretty method is not exported.  So here is a copy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
        ];
      };
    };
  }