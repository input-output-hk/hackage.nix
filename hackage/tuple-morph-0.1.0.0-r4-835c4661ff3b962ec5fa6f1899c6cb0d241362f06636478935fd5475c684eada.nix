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
        name = "tuple-morph";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Morph between tuples, or convert them from and to HLists.";
      description = "Morph between tuples with the same \"flattened\" representation. Convert\ntuples from and to heterogenous lists.\n\nSee \"Data.Tuple.Morph\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HList)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }