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
        name = "retry";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Ozgun Ataman, Soostone Inc";
      maintainer = "ozgun.ataman@soostone.com";
      author = "Ozgun Ataman";
      homepage = "";
      url = "";
      synopsis = "Retry combinators for monadic actions that may fail";
      description = "This package exposes combinators that can wrap arbitrary\nmonadic actions. They run the action and potentially retry\nrunning it with some configurable delay for a configurable\nnumber of times.\nThe purpose is to make it easier to work with IO and\nespecially network IO actions that often experience temporary\nfailure and warrant retrying of the original action. For\nexample, a database query may time out for a while, in which\ncase we should hang back for a bit and retry the query instead\nof simply raising an exception.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
        ];
      };
    };
  }