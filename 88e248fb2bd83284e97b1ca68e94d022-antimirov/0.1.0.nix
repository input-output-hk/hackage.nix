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
        name = "antimirov";
        version = "0.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2009 Marcel Manthe";
      maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Define the language containment (=subtyping) relation on regulare expressions.";
      description = "This is a generalization of regex-\"matching\". We use Antimirovs algorithm.\nTests are provided, too.";
      buildType = "Simple";
    };
    components = {
      "antimirov" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "test" = {
          depends  = [
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }