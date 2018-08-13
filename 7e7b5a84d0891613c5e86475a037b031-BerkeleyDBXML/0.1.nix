{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "BerkeleyDBXML";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Berkeley DB and Berkeley DB/XML binding for Haskell";
      description = "Berkeley DB and Berkeley DB/XML binding for Haskell";
      buildType = "Simple";
    };
    components = {
      "BerkeleyDBXML" = {
        depends  = [ (hsPkgs.base) ];
        libs = [
          (pkgs.db)
          (pkgs.dbxml)
          (pkgs.db_cxx)
          (pkgs.xqilla)
          (pkgs.xerces-c)
          (pkgs.xml2)
        ];
      };
    };
  }