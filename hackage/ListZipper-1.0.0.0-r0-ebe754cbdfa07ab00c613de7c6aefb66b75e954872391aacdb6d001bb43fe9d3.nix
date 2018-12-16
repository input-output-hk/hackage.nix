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
      specVersion = "1.2.1";
      identifier = {
        name = "ListZipper";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Ryan Ingram";
      maintainer = "Ryan Ingram <ryani.spam@gmail.com>";
      author = "Ryan Ingram <ryani.spam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple zipper for lists";
      description = "List zipper with O(1) get element at cursor, insert at cursor,\ndelete at cursor, move right, and move left operations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }