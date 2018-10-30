{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "slug";
        version = "0.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@opmbx.org>";
      author = "Mark Karpov <markkarpov@opmbx.org>";
      homepage = "https://github.com/mrkkrp/slug";
      url = "";
      synopsis = "Type-safe slugs for Yesod ecosystem";
      description = "Type-safe slugs for Yesod ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.http-api-data)
          (hsPkgs.path-pieces)
          (hsPkgs.persistent)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.path-pieces)
            (hsPkgs.slug)
            (hsPkgs.text)
          ];
        };
      };
    };
  }