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
      specVersion = "1.4";
      identifier = {
        name = "BerkeleyDBXML";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
      url = "";
      synopsis = "Berkeley DB and Berkeley DB XML binding";
      description = "Berkeley DB and Berkeley DB XML binding";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = [
          (pkgs."db")
          (pkgs."dbxml")
          (pkgs."db_cxx")
          (pkgs."xqilla")
          (pkgs."xerces-c")
          (pkgs."xml2")
        ];
      };
    };
  }