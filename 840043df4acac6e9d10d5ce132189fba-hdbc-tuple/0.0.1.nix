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
      specVersion = "0";
      identifier = {
        name = "hdbc-tuple";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Rick Kaudewitz";
      maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Type save tuples for HDBC";
      description = "Type save tuples for HDBC";
      buildType = "Simple";
    };
    components = {
      "hdbc-tuple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.typical)
          (hsPkgs.HDBC)
          (hsPkgs.convertible)
        ];
      };
    };
  }