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
        name = "persistent-mongoDB";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>, Rick Richardson <rick.richardson@gmail.com>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://docs.yesodweb.com/persistent/";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "Backend for the persistent library using mongoDB.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.neither)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
          (hsPkgs.mongoDB)
          (hsPkgs.network)
          (hsPkgs.bson)
          (hsPkgs.compact-string-fix)
          (hsPkgs.cereal)
        ];
      };
    };
  }