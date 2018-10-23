{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "DataTreeView";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anotheraddress@gmx.de";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "A GTK widget for displaying arbitrary Data.Data.Data instances";
      description = "Screenshot: <http://i.imgur.com/5JlhG.png>\n\nExample use:\n\n> import DataTreeView\n> main = simpleView [([\"hello\",\"world\",error \"this works too\"],25)]";
      buildType = "Simple";
    };
    components = {
      "DataTreeView" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.glib)
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.MissingH)
          (hsPkgs.gtk)
          (hsPkgs.deepseq)
        ];
      };
    };
  }