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
      specVersion = "1.10";
      identifier = {
        name = "markup";
        version = "2.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Abstraction for markup languages";
      description = "This library tries to make things more uniformly controlled when working with\nmarkup languages in haskell - namely /deployment/ of markup assets.\n\nDeployment, from this library's perspective, means /how/ something can be\nrendered to markup, yet still achieve the same \"result\" to the end user (namely\nthe DOM).\n\nWe use monad transformers to infer the deployment mechanism for a context of\nmarkup. The three deployment mechanisms provided include /inline/ (content is\nslapped between markup tags), /hosted/ (entirely external - uses raw text as a\nurl), and /local/ (which uses the <hackage.haskell.org/package/urlpath urlpath>\nlibrary to realize what kind of link to create).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.comonad)
          (hsPkgs.exceptions)
          (hsPkgs.lucid)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.path-extra)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.urlpath)
        ];
      };
    };
  }