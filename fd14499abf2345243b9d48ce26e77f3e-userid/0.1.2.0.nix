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
      specVersion = "1.10";
      identifier = {
        name = "userid";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.github.com/Happstack/userid";
      url = "";
      synopsis = "A library which provides the UserId type and useful instances for web development";
      description = "Includes instances for SafeCopy, Lens, Boomerang, PathInfo and more";
      buildType = "Simple";
    };
    components = {
      "userid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.boomerang)
          (hsPkgs.lens)
          (hsPkgs.safecopy)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-th)
        ];
      };
    };
  }