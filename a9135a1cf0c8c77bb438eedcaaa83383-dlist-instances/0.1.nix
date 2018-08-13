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
      specVersion = "1.9.2";
      identifier = {
        name = "dlist-instances";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Greg Weber";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber";
      homepage = "https://github.com/gregwebs/dlist-instances";
      url = "";
      synopsis = "Difference lists instances";
      description = "See the dlist packages.\nThis package is the canonical source for some orphan instances.\nOrphan instances are placed here to avoid dependencies elsewhere.";
      buildType = "Simple";
    };
    components = {
      "dlist-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.dlist)
        ];
      };
    };
  }