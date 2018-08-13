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
        name = "skell";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "pharpend2@gmail.com";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/skell";
      url = "";
      synopsis = "An overly complex Haskell web framework.";
      description = "Skell is a Haskell web framework. Much like an actual skeleton, Skell is both\ncomplex and inflexible. Skell is inspired by Happstack, but looks more like\nYesod on the back-end.";
      buildType = "Simple";
    };
    components = {
      "skell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
        ];
      };
    };
  }