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
      specVersion = "0";
      identifier = {
        name = "twitter";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Eidhof <ce@tupil.com>";
      author = "Chris Eidhof";
      homepage = "";
      url = "";
      synopsis = "A Haskell-based CLI Twitter client";
      description = "A really basic twitter client.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "twitter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.curl)
            (hsPkgs.directory)
            (hsPkgs.xml)
            (hsPkgs.readline)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.json)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }