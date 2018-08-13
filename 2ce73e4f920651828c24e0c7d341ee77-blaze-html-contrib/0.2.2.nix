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
      specVersion = "1.2";
      identifier = {
        name = "blaze-html-contrib";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Chris Done";
      maintainer = "adit@adit.io";
      author = "Aditya Bhargava, Chris Done";
      homepage = "https://github.com/egonSchiele/blaze-html-contrib";
      url = "";
      synopsis = "Some contributions to add handy things to blaze html.";
      description = "Some contributions to add handy things to blaze html. Please\nsend your contributions as pull requests. See homepage for basic usage.";
      buildType = "Simple";
    };
    components = {
      "blaze-html-contrib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.blaze-html)
          (hsPkgs.safe)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.cgi)
        ];
      };
    };
  }